package com.moma.trip.service;

import com.moma.trip.po.User;

public interface SignInService {

	User signIn(String email, String password);

}
