package com.moma.trip.soap.ctrip.base;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.zip.GZIPInputStream;

import com.moma.trip.soap.ctrip.utils.ConfigData;
import com.moma.trip.soap.ctrip.utils.SignatureUtils;

// Http������
public class HttpAccessAdapter {
	// Http����̬��Ϣ
	private static ArrayList<HttpRequestProperty> StaticHttpRequestProperty = LoadStaticHttpRequestProperties();

	// ����ָ��������ָ����URL��
	public static String SendRequestToUrl(String requestContent,
			String urlString, String paraName) {
		InputStream errorStream = null;
		HttpURLConnection httpCon = null;
		try {
			URL url = new URL(urlString);
			String content = XMLToString(requestContent);
			String soapMessage = AddSoapShell(content);
			httpCon = (HttpURLConnection) url.openConnection();
			httpCon.setRequestMethod("POST");
			httpCon.setDoOutput(true);
			httpCon.setDoInput(true);

			for (int i = 0; i < StaticHttpRequestProperty.size(); i++) {
				httpCon
						.setRequestProperty(StaticHttpRequestProperty.get(i)
								.getName(), StaticHttpRequestProperty.get(i)
								.getValue());
			}

			httpCon.setRequestProperty("Content-Length", String
					.valueOf(soapMessage.length()));

			OutputStream outputStream = httpCon.getOutputStream();
			outputStream.write(soapMessage.getBytes("UTF-8"));
			outputStream.close();

			InputStream inputStream = httpCon.getInputStream();
			// String encoding = httpCon.getRequestProperty("Accept-Encoding");
			BufferedReader br = null;
			// httpCon.getResponseMessage();
			if (httpCon.getRequestProperty("Accept-Encoding") != null) {
				try {
					GZIPInputStream gzipStream = new GZIPInputStream(
							inputStream);
					br = new BufferedReader(new InputStreamReader(gzipStream,
							"UTF-8"));
				} catch (IOException e) {
					br = new BufferedReader(new InputStreamReader(inputStream,
							"UTF-8"));
				}
			} else {
				br = new BufferedReader(new InputStreamReader(inputStream,
						"UTF-8"));
			}
			StringBuffer result = new StringBuffer();
			String line = null;
			while ((line = br.readLine()) != null) {
				result.append(line);
			}
			return StringToXML(RemoveSoapShell(result.toString()));

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			errorStream = httpCon.getErrorStream();
			if (errorStream != null) {
				String errorMessage = null;
				String line = null;
				BufferedReader br = new BufferedReader(new InputStreamReader(
						errorStream));
				try {
					while ((line = br.readLine()) != null) {
						errorMessage += line;
					}
					return errorMessage;
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
			e.printStackTrace();
			try {
				errorStream.close();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		} catch (SdkSystemException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (httpCon != null) {
				httpCon.disconnect();
			}
		}

		return "";
	}

	// ��Soap�����ӵ���������
	private static String AddSoapShell(
			/* String parameterName, */String patameterValue) throws Exception {
		BufferedReader bufferedReader = null;
		try {
			InputStream in = HttpAccessAdapter.class
					.getResourceAsStream("/com/moma/trip/soap/ctrip/RequestSOAP.xml");
			bufferedReader = new BufferedReader(new InputStreamReader(in));
			String text = bufferedReader.readLine();
			StringBuilder soapShellStringBuilder = new StringBuilder();
			while (text != null) {
				soapShellStringBuilder.append(text);
				text = bufferedReader.readLine();
			}
			String result = soapShellStringBuilder.toString();
			return result.replaceAll("string", patameterValue);
		} catch (FileNotFoundException e) {
			throw new SdkSystemException("�޷��ҵ�����ģ���ļ�");
		} catch (IOException e) {
			throw new SdkSystemException("�޷���ȡ����ģ���ļ�");
		} finally {
			if (bufferedReader != null) {
				try {
					bufferedReader.close();
				} catch (IOException e) {
				}
			}
		}
	}

	// ɾ��Soap�����Ϣ
	private static String RemoveSoapShell(String source) {
		String result = "";
		int indexElementBegin = source.indexOf("<RequestResult>");
		int indexElementEnd = source.indexOf("</RequestResult>");
		if (indexElementBegin > 0 && indexElementEnd > 0) {
			result = source.substring(indexElementBegin
					+ "<RequestResult>".length(), indexElementEnd);
		}
		return result;
	}

	// ��xml�ĵ�ת��Ϊ�ɴ�����ַ���
	private static String XMLToString(String source) {
		String result = source.replaceAll("<", "&lt;");
		result = result.replaceAll(">", "&gt;");
		return result;
	}

	// �����ص��ַ���ת��Ϊ�ɷ����л�XML�ı�
	private static String StringToXML(String source) {
		String result = source.replaceAll("&lt;", "<");
		result = result.replaceAll("&gt;", ">");
		return result;
	}

	// ���ؾ�̬��Ϣ
	private static ArrayList<HttpRequestProperty> LoadStaticHttpRequestProperties() {
		ArrayList<HttpRequestProperty> staticHttpRequestProperty = new ArrayList<HttpRequestProperty>();
		/*staticHttpRequestProperty.add(new HttpRequestProperty("Host",
				"crmint.dev.sh.ctriptravel.com"));*/
		staticHttpRequestProperty.add(new HttpRequestProperty("Content-Type",
				"text/xml; charset=UTF-8"));
		staticHttpRequestProperty.add(new HttpRequestProperty("SOAPAction",
				"http://ctrip.com/Request"));
		staticHttpRequestProperty.add(new HttpRequestProperty(
				"Accept-Encoding", "gzip, deflate"));

		return staticHttpRequestProperty;
	}

	@SuppressWarnings("static-access")
	public static void main(String[] args) {

		String request = createRequestXml();
		String url = "http://openapi.ctrip.com/Hotel/OTA_Ping.asmx?wsdl";
		String paraName = "requestXML";

		HttpAccessAdapter httpAccessAdapter = new HttpAccessAdapter();
		String response = httpAccessAdapter.SendRequestToUrl(request, url, paraName);
		System.out.println(response);
	}

	private static String createRequestXml() {
		StringBuilder sb = new StringBuilder();
		try {
			sb.append("<Request><Header AllianceID=\"");
			sb.append(ConfigData.AllianceId);
			sb.append("\" SID=\"");
			sb.append(ConfigData.SId);
			sb.append("\" TimeStamp=\"");
			String timestamp = SignatureUtils.GetTimeStamp();
			sb.append(timestamp);
			sb.append("\" Signature=\"");
	
			String signature = SignatureUtils.CalculationSignature(timestamp
					+ "", ConfigData.AllianceId, ConfigData.SecretKey, ConfigData.SId, ConfigData.RequestType);
			sb.append(signature);
			sb.append("\" RequestType=\"");
			sb.append(ConfigData.RequestType);
			sb.append("\" AsyncRequest=\"false\" Timeout=\"0\" MessagePriority=\"3\"/><HotelRequest><RequestBody xmlns:ns=\"http://www.opentravel.org/OTA/2003/05\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"><ns:OTA_PingRQ><ns:EchoData>��ͨ����</ns:EchoData></ns:OTA_PingRQ></RequestBody></HotelRequest></Request>");
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
		return sb.toString();
	}

}
