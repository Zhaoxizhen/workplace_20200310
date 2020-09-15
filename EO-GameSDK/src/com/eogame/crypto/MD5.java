package com.eogame.crypto;
import java.security.MessageDigest;

public class MD5 {
	
	static char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8',
			'9', 'a', 'b', 'c', 'd', 'e', 'f' };

	public String encode(byte[] bytes) {
		return null;
	}

	public static String encode(String string) {
		try {
			byte[] strTemp = string.getBytes("UTF-8");
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.update(strTemp);
			byte[] md = messageDigest.digest();
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			return null;
		}
	}

	public static String getMD5(String source){
		if(source==null)source="";
		return getMD5(source.getBytes());
	}

	public static String getMD5(byte[] source) {
		String s = null;
		char hexDigits[] = {
				'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd',  'e', 'f'};
		try
		{
			java.security.MessageDigest md = java.security.MessageDigest.getInstance( "MD5" );
			md.update( source );
			byte tmp[] = md.digest();

			char str[] = new char[16 * 2];

			int k = 0;
			for (int i = 0; i < 16; i++) {

				byte byte0 = tmp[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];

				str[k++] = hexDigits[byte0 & 0xf];
			}
			s = new String(str);

		}catch( Exception e )
		{
			e.printStackTrace();
		}
		return s;
	}


}
