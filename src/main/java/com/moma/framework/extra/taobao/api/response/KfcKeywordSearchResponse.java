package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;
import com.moma.framework.extra.taobao.api.domain.KfcSearchResult;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: taobao.kfc.keyword.search response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class KfcKeywordSearchResponse extends TaobaoResponse {

	private static final long serialVersionUID = 7654719438243187153L;

	/** 
	 * KFC关键词匹配返回的结果信息
	 */
	@ApiField("kfc_search_result")
	private KfcSearchResult kfcSearchResult;

	public void setKfcSearchResult(KfcSearchResult kfcSearchResult) {
		this.kfcSearchResult = kfcSearchResult;
	}
	public KfcSearchResult getKfcSearchResult( ) {
		return this.kfcSearchResult;
	}

}
