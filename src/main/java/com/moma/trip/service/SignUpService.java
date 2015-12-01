package com.moma.trip.service;

import com.moma.trip.po.User;

public interface SignUpService {

	public void save(User user);

	public User getUserByLoginId(String loginId);

	public void resetPsword(String loginId, String password);
	
	public User signUp(String name, String telphone);

	public void updateUser(User u);

}
