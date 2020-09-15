package com.eogame.http;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/**
 * SSL Socket Factory
 * @author andy
 *
 */
public class EOSSLSocketFactory extends org.apache.http.conn.ssl.SSLSocketFactory {

	SSLContext context = SSLContext.getInstance("TLS");

	public EOSSLSocketFactory(KeyStore trustStore) throws NoSuchAlgorithmException, KeyManagementException,
			KeyStoreException, UnrecoverableKeyException {
		super(trustStore);
		TrustManager tm = new X509TrustManager() {
			public X509Certificate[] getAcceptedIssuers() {
				return null;
			}

			public void checkServerTrusted(X509Certificate[] chain,
					String authType) throws CertificateException {
			}

			public void checkClientTrusted(X509Certificate[] chain,
					String authType) throws CertificateException {
			}
		};
		this.context.init(null, new TrustManager[] { tm }, null);
	}

	public Socket createSocket(Socket socket, String host, int port, boolean autoClose) throws IOException, UnknownHostException {
		return this.context.getSocketFactory().createSocket(socket, host,port, autoClose);
	}

	public Socket createSocket() throws IOException {
		return this.context.getSocketFactory().createSocket();
	}

}
