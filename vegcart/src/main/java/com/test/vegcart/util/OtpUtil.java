package com.test.vegcart.util;

import java.util.Random;

public class OtpUtil {
	
	private static Random rand=new Random();
	private static int min = 100000;
	private static int max = 999999;
	
	public static String getOTP() {
		
		return String.valueOf(min+rand.nextInt(max));
	}
	
	public static void main(String[] args) {
		System.out.println(OtpUtil.getOTP());
	}

}
