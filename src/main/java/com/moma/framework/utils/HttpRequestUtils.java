package com.moma.framework.utils;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

public class HttpRequestUtils {

	public static String doPostRequest(String url) throws ClientProtocolException, IOException{
		CloseableHttpClient httpclient = HttpClientBuilder.create().build();
		
		HttpPost post = new HttpPost(url);

		ResponseHandler<byte[]> handler = new ResponseHandler<byte[]>() {
		    public byte[] handleResponse(
		        HttpResponse response) throws ClientProtocolException, IOException {
		        HttpEntity entity = response.getEntity();
		        if (entity != null) {
		            return EntityUtils.toByteArray(entity);
		        } else {
		            return null;
		        }
		    }
		};
		
		byte[] bytes = httpclient.execute(post, handler);
		
		return new String(bytes);
	}
	
}
