package com.test.vegcart.util;

import java.util.Random;

public class PasswordUtil {

	private static Random rand=new Random();
	public static String getPassword() {
		String capL = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String smallL = "abcdefghijklmnopqrstuvwxyz";
		String num = "0123456789";
		String specialChar = "@$#%*";
		StringBuilder sb = new StringBuilder();
		
		sb.append(capL.charAt(rand.nextInt(26))).append(capL.charAt(rand.nextInt(26)))
				.append(specialChar.charAt(rand.nextInt(4))).append(smallL.charAt(rand.nextInt(26)))
				.append(smallL.charAt(rand.nextInt(26))).append(smallL.charAt(rand.nextInt(26)))
				.append(num.charAt(rand.nextInt(9))).append(num.charAt(rand.nextInt(9))).append(num.charAt(rand.nextInt(9)));

		return sb.toString();
	}

	public static void main(String[] args) {
		System.out.println(PasswordUtil.getPassword());
	}
}
