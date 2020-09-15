package com.eogame.utils;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Malone
 *
 */
public class PatternUtil {
	
	/**
	 * 检查用户名是否符合要求
	 * @param username
	 * @return
	 */
	public static boolean checkUserName(String username){
		String regEx = "^[a-zA-Z][0-9a-zA-Z_]{5,19}$";
		Pattern pat = Pattern.compile(regEx);
		Matcher mat = pat.matcher(username);
		return mat.find();
	}
	
	/**
	 * 判断密码是否符合要求
	 * @param pwd
	 * @return
	 */
	public static boolean checkPassword(String pwd){
		String regEx = "^[\\x20-\\x7E]{6,20}$";
		Pattern pat = Pattern.compile(regEx);
		Matcher mat = pat.matcher(pwd);
		return mat.find();
	}

	/**
	 * 判断手机号码是否合法
	 * @param phone
	 * @return
	 */
	public static boolean chcekPhone(String phone){
		String regEx = "^1\\d{10}$";
		Pattern pat = Pattern.compile(regEx);
		Matcher mat = pat.matcher(phone);
		return mat.find();
	}
	
	public static boolean checkVisitor(String username){
		String regEx = "^游客\\d{7,}$";
		Pattern pat = Pattern.compile(regEx);
		Matcher mat = pat.matcher(username);
		return mat.find();
	}
	
	/**
	 * 检查是否为简单密码
	 * 简单：仅含有字母、数字、符号中的一种类型
	 * @param pwd
	 * @return
	 */
	public static boolean CheckSecurity(String pwd){  
		String regexZ = "\\d*";
		String regexS = "[a-zA-Z]+";
		String regexT = "[^A-Za-z0-9]+$";
		if (pwd.matches(regexZ)) {
			return false;
		}
		if (pwd.matches(regexS)) {
			return false;
		}
		if (pwd.matches(regexT)) {
			return false;
		}
	    return true;
	}
	
	public static boolean common(String str,String regEx){
		Pattern pat = Pattern.compile(regEx);
		Matcher mat = pat.matcher(str);
		return mat.find();
	}
	
	/**
	 * 如果所传入的是邮箱则返回true
	 * @param email
	 * @return
	 */
	public static boolean checkEmail(String email){
		String regEx = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$";
		Pattern pat = Pattern.compile(regEx);
		Matcher mat = pat.matcher(email);
		return mat.find();
	}
	
	/**
	 * 验证输入金额是否合法
	 * @param verifi
	 * @return
	 */
	public static boolean verifiAmt(String verifi){
		String regEx = "^[1-9]\\d{0,4}$";
		Pattern pat = Pattern.compile(regEx);
		Matcher mat = pat.matcher(verifi);
		return mat.find();
	}
	
}
