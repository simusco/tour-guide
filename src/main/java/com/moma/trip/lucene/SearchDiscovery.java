package com.moma.trip.lucene;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.Field.TermVector;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.Searcher;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

import com.moma.framework.ikanalyzer.lucene.IKAnalyzer;
import com.moma.framework.ikanalyzer.lucene.IKSimilarity;
import com.moma.trip.po.Discovery;

public class SearchDiscovery {
	
	private String searchDir = "/home/dftrip/lucene/index";
	private static File indexFile = null;
	private static Searcher searcher = null;
	private static Analyzer analyzer = null;
	/** 索引页面缓冲 */
	private int maxBufferedDocs = 500;
	
	public void createIndex(List<Discovery> dictionarys){
		Directory directory = null;
		IndexWriter indexWriter = null;

		try {
			indexFile = new File(searchDir);
			if (!indexFile.exists()) {
				indexFile.mkdir();
			}
			directory = FSDirectory.open(indexFile);
			analyzer = new IKAnalyzer();

			indexWriter = new IndexWriter(directory, analyzer, true, IndexWriter.MaxFieldLength.UNLIMITED);
			indexWriter.setMaxBufferedDocs(maxBufferedDocs);
			Document doc = null;
			
			for(int i=0;i<dictionarys.size();i++){
				Discovery dis = dictionarys.get(i);
				
				doc = new Document();
				doc.add(new Field("discoveryId", dis.getDiscoveryId(), Field.Store.YES, Field.Index.NOT_ANALYZED,
						TermVector.NO));
				doc.add(new Field("name", dis.getName(), Field.Store.YES, Field.Index.NOT_ANALYZED,
						TermVector.NO));
				
				if(dis.getDescription() != null)
					doc.add(new Field("description", dis.getDescription(), Field.Store.YES, Field.Index.NOT_ANALYZED,
						TermVector.NO));
				doc.add(new Field("tags", dis.getTags(), Field.Store.YES, Field.Index.ANALYZED,
						TermVector.NO));
				
				if(dis.getImageURL() != null)
					doc.add(new Field("imageURL", dis.getImageURL(), Field.Store.YES, Field.Index.NOT_ANALYZED,
						TermVector.NO));
				doc.add(new Field("type", dis.getType(), Field.Store.YES, Field.Index.NOT_ANALYZED,
						TermVector.NO));
				
				if(dis.getAuthor() != null)
					doc.add(new Field("author", dis.getAuthor(), Field.Store.YES, Field.Index.NOT_ANALYZED,
						TermVector.NO));
				
				if(dis.getUrl() != null)
					doc.add(new Field("url", dis.getUrl(), Field.Store.YES, Field.Index.NOT_ANALYZED,
						TermVector.NO));
				doc.add(new Field("isRec", dis.getIsRec(), Field.Store.YES, Field.Index.NOT_ANALYZED,
						TermVector.NO));
				
				indexWriter.addDocument(doc);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
				indexWriter.optimize();
				indexWriter.close();
			} catch (CorruptIndexException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				try {
					IndexWriter.unlock(directory);
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		}
		
	}
	
	/**
	 * 搜索索引
	 * 
	 * @param queryStr
	 * @return
	 * @throws Exception
	 */
	private TopDocs search(String queryStr) throws Exception {
		if (searcher == null) {
			indexFile = new File(searchDir);
			searcher = new IndexSearcher(FSDirectory.open(indexFile));
		}
		searcher.setSimilarity(new IKSimilarity());
		
		QueryParser parser = new QueryParser(Version.LUCENE_30, "tags", new IKAnalyzer());
		Query query = parser.parse(queryStr);

		TopDocs topDocs = searcher.search(query, searcher.maxDoc());
		return topDocs;
	}
	
	/**
	 * 返回结果并添加到List中
	 * 
	 * @param scoreDocs
	 * @return
	 * @throws Exception
	 */
	private List<Discovery> addHits2List(ScoreDoc[] scoreDocs) throws Exception {
		List<Discovery> listBean = new ArrayList<Discovery>();
		Discovery bean = null;
		for (int i = 0; i < scoreDocs.length; i++) {
			int docId = scoreDocs[i].doc;
			Document doc = searcher.doc(docId);
			bean = new Discovery();
			bean.setDiscoveryId(doc.get("discoveryId"));
			bean.setName(doc.get("name"));
			bean.setTags(doc.get("tags"));
			bean.setImageURL(doc.get("imageURL"));
			bean.setType(doc.get("type"));
			bean.setAuthor(doc.get("author"));
			bean.setUrl(doc.get("url"));
			bean.setIsRec(doc.get("isRec"));
			bean.setDescription(doc.get("description"));
			listBean.add(bean);
		}
		return listBean;
	}
	
	public List<Discovery> query(String queryStr){
		
		if(StringUtils.isEmpty(queryStr)){
			return null;
		}
		
		TopDocs topDocs;
		try {
			topDocs = this.search(queryStr);
			ScoreDoc[] scoreDocs = topDocs.scoreDocs;
			return this.addHits2List(scoreDocs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	public static void main(String[] args){
		
		List<Discovery> ll = new SearchDiscovery().query("主题活动");
		if(ll != null)
			System.out.println(ll.size());
	}

	public Map<String, Object> query(String queryStr, Integer i, int j) {
		Map<String, Object> m = new HashMap<String, Object>();
		TopDocs topDocs;
		
		if(StringUtils.isEmpty(queryStr)){
			return m;
		}
		
		try {
			topDocs = this.search(queryStr);
			ScoreDoc[] scoreDocs = topDocs.scoreDocs;
			
			int length = scoreDocs.length;
			int last = (i + j) > length? length : (i+j);
			
			List<ScoreDoc> t = new ArrayList<ScoreDoc>();
			for(int x = i;x < last;x++){
				t.add(scoreDocs[x]);
			}
			
			ScoreDoc[] tt = new ScoreDoc[t.size()];
			tt = t.toArray(tt);
			
			m.put("resultlist", this.addHits2List(tt));
			m.put("total", length);
			m.put("nomore", last == length);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return m;
	}

}