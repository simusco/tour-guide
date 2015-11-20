package com.moma.trip.service.impl;

import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.ServiceException;
import com.moma.framework.utils.Md5;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.extra.ctrip.UserRequestService;
import com.moma.trip.mapper.SignUpMapper;
import com.moma.trip.po.User;
import com.moma.trip.service.SignUpService;

@Service
public class SignUpServiceImpl implements SignUpService {

	@Resource
	private SignUpMapper signUpMapper;
	
	@Resource 
	private UserRequestService userRequestService;

	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void save(User user){
		try{
			User u = getUserByLoginId(user.getLoginId()+"".toLowerCase());
			if(u != null){
				throw new ServiceException(user.getLoginId()+"已经存在！");
			}
			
			String salt = Math.abs(new Random().nextLong())+"";
			String cpassword = Md5.encode(user.getPassword(), salt);
	
			user.setUserId(UUIDUtils.getUUID());
			user.setSalt(salt);
			user.setPassword(cpassword);
			user.setCreateTime(new Date());
			
			String ctripUniqueId = userRequestService.getUserUniqueID(user.getUserId());
			user.setCtripUniqueId(ctripUniqueId);
			
			signUpMapper.saveUser(user);
		}catch(Exception e){
			e.printStackTrace();
			throw new ServiceException(e.getMessage());
		}
	}

	public User getUserByLoginId(String loginId) {
		try{
			return signUpMapper.getUserByLoginId(loginId);
		}catch(Exception e){
			e.printStackTrace();
			throw new ServiceException("获取用户信息失败！");
		}
	}

	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void resetPsword(String loginId, String password) {
		
		User u = getUserByLoginId(loginId+"".toLowerCase());
		if(u == null){
			throw new ServiceException(loginId + "不存在！");
		}
		
		String salt = Math.abs(new Random().nextLong())+"";
		String cpassword = Md5.encode(password, salt);
		
		signUpMapper.resetPsword(u.getUserId(), cpassword, salt);
	}

}
