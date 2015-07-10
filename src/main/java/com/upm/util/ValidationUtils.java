package com.upm.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ValidationUtils {
	private static final String EMAIL_PATTERN = 
			"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	
	
	public static boolean validateEmail(String value){
		Pattern pattern=Pattern.compile(EMAIL_PATTERN);;
		Matcher matcher=pattern.matcher(value);
		return matcher.matches();
	}
	
}
