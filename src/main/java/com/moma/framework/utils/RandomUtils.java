package com.moma.framework.utils;

import java.util.Random;

public class RandomUtils {

	public static String getRandom(int min, int max) {
		Random random = new Random();
		int s = random.nextInt(max) % (max - min + 1) + min;
		return String.valueOf(s);
	}
	
	public static String getRandomVcode(){
        //验证码
        String vcode = "";
        for (int i = 0; i < 4; i++) {
            vcode = vcode + (int)(Math.random() * 9);
        }
        return vcode;
    }
	
	
	public static String getRandomPassword(){
        //验证码
        String vcode = "";
        for (int i = 0; i < 6; i++) {
            vcode = vcode + (int)(Math.random() * 9);
        }
        return vcode;
    }
	
	public static void main(String[] args){
		System.out.println(getRandomPassword());
	}
	
}
