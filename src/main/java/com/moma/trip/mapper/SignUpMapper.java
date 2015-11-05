package com.moma.trip.mapper;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.User;

@Repository
public interface SignUpMapper {

	void saveUser(User user);

	User getUserByLoginId(String loginId);

}
