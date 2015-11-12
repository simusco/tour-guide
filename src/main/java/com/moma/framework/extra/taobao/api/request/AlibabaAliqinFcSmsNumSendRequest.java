package com.moma.framework.extra.taobao.api.request;

import com.moma.framework.extra.taobao.api.internal.util.RequestCheckUtils;

import com.moma.framework.extra.taobao.api.internal.util.json.JSONValidatingReader;import java.util.Map;

import com.moma.framework.extra.taobao.api.ApiRuleException;
import com.moma.framework.extra.taobao.api.BaseTaobaoRequest;
import com.moma.framework.extra.taobao.api.internal.util.TaobaoHashMap;

import com.moma.framework.extra.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

/**
 * TOP API: alibaba.aliqin.fc.sms.num.send request
 * 
 * @author top auto create
 * @since 1.0, 2015.10.19
 */
public class AlibabaAliqinFcSmsNumSendRequest extends BaseTaobaoRequest<AlibabaAliqinFcSmsNumSendResponse> {
	
	

	/** 
	* 公共回传参数，在“消息返回”中会透传回该参数；举例：用户可以传入自己下级的会员ID，在消息返回时，该会员ID会包含在内，用户可以根据该会员ID识别是哪位会员使用了你的应用
	 */
	private String extend;

	/** 
	* 短信接收号码，11位手机号码，不能加0或+86
	 */
	private String recNum;

	/** 
	* 短信签名，传入的短信签名必须是在阿里大鱼“管理中心-短信签名管理”中的可用签名
	 */
	private String smsFreeSignName;

	/** 
	* 短信模板变量，传参规则{"key"："value"}，key的名字须和申请模板中的变量名一致，多个变量之间以逗号隔开，示例：{"name":"xiaoming","code":"1234"}
	 */
	private Object smsParam;

	/** 
	* 短信模板ID，传入的模板必须是在阿里大鱼阿里大鱼“管理中心-短信模板管理”中的可用模板
	 */
	private String smsTemplateCode;

	/** 
	* 短信类型，传入值请填写normal
	 */
	private String smsType;

	public void setExtend(String extend) {
		this.extend = extend;
	}
	public String getExtend() {
		return this.extend;
	}

	public void setRecNum(String recNum) {
		this.recNum = recNum;
	}
	public String getRecNum() {
		return this.recNum;
	}

	public void setSmsFreeSignName(String smsFreeSignName) {
		this.smsFreeSignName = smsFreeSignName;
	}
	public String getSmsFreeSignName() {
		return this.smsFreeSignName;
	}

	public void setSmsParam(Object smsParam) {
		this.smsParam = smsParam;
	}public void setSmsParamString(String smsParam) {
		this.smsParam = new JSONValidatingReader().read(smsParam);
	}
	public Object getSmsParam() {
		return this.smsParam;
	}

	public void setSmsTemplateCode(String smsTemplateCode) {
		this.smsTemplateCode = smsTemplateCode;
	}
	public String getSmsTemplateCode() {
		return this.smsTemplateCode;
	}

	public void setSmsType(String smsType) {
		this.smsType = smsType;
	}
	public String getSmsType() {
		return this.smsType;
	}

	public String getApiMethodName() {
		return "alibaba.aliqin.fc.sms.num.send";
	}

	public Map<String, String> getTextParams() {		
		TaobaoHashMap txtParams = new TaobaoHashMap();
		txtParams.put("extend", this.extend);
		txtParams.put("rec_num", this.recNum);
		txtParams.put("sms_free_sign_name", this.smsFreeSignName);
		txtParams.put("sms_param", this.smsParam);
		txtParams.put("sms_template_code", this.smsTemplateCode);
		txtParams.put("sms_type", this.smsType);
		if(this.udfParams != null) {
			txtParams.putAll(this.udfParams);
		}
		return txtParams;
	}

	public Class<AlibabaAliqinFcSmsNumSendResponse> getResponseClass() {
		return AlibabaAliqinFcSmsNumSendResponse.class;
	}

	public void check() throws ApiRuleException {
		RequestCheckUtils.checkNotEmpty(recNum, "recNum");
		RequestCheckUtils.checkNotEmpty(smsFreeSignName, "smsFreeSignName");
		RequestCheckUtils.checkNotEmpty(smsTemplateCode, "smsTemplateCode");
		RequestCheckUtils.checkNotEmpty(smsType, "smsType");
	}
}