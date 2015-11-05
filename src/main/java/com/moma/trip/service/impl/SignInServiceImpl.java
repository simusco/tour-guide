package com.moma.trip.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.framework.ServiceException;
import com.moma.framework.utils.Md5;
import com.moma.trip.mapper.SignUpMapper;
import com.moma.trip.po.User;
import com.moma.trip.service.SignInService;

@Service
public class SignInServiceImpl implements SignInService {

	@Resource
	private SignUpMapper signUpMapper;

	@Override
	public User signIn(String phoneNo, String password) {

		User user = signUpMapper.getUserByLoginId(phoneNo);
		if (user == null) {
			throw new ServiceException(phoneNo + "不存在!");
		}

		String salt = user.getSalt();
		String pp = Md5.encode(password, salt);

		if (!user.getPassword().equals(pp)) {
			throw new ServiceException("密码错误！");
		}

		return user;
	}

}
