/**
 * 
 */
package com.moma.framework.ikanalyzer.sample;

import java.io.IOException;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.LockObtainFailedException;
import org.apache.lucene.store.RAMDirectory;

import com.moma.framework.ikanalyzer.lucene.IKAnalyzer;
import com.moma.framework.ikanalyzer.lucene.IKQueryParser;
import com.moma.framework.ikanalyzer.lucene.IKSimilarity;

/**
 * @author linly
 *
 */
public class IKAnalyzerDemo {
	
	public static void main2(String[] args){
		//Lucene Document的域名
		String fieldName = "text";
		 //检索内容
		String text = "IK Analyzer是一个结合词典分词和文法分词的中文分词开源工具包。它使用了全新的正向迭代最细粒度切分算法。";
		
		//实例化IKAnalyzer分词器
		Analyzer analyzer = new IKAnalyzer();
	 
		
		Directory directory = null;
		IndexWriter iwriter = null;
		IndexSearcher isearcher = null;
		try {
			//建立内存索引对象
			directory = new RAMDirectory();	 
			iwriter = new IndexWriter(directory, analyzer, true , IndexWriter.MaxFieldLength.LIMITED);
			Document doc = new Document();
			doc.add(new Field("ID", "10000", Field.Store.YES, Field.Index.NOT_ANALYZED));
			doc.add(new Field(fieldName, text, Field.Store.YES, Field.Index.ANALYZED));
			iwriter.addDocument(doc);
			iwriter.close();
			
		    //实例化搜索器   
			isearcher = new IndexSearcher(directory);			
			//在索引器中使用IKSimilarity相似度评估器
			isearcher.setSimilarity(new IKSimilarity());
			
			String keyword = "中文分词工具包";
			
			//使用IKQueryParser查询分析器构造Query对象
			Query query = IKQueryParser.parse(fieldName, keyword);
			
			//搜索相似度最高的5条记录
			TopDocs topDocs = isearcher.search(query , 5);
			System.out.println("命中：" + topDocs.totalHits);
			//输出结果
			ScoreDoc[] scoreDocs = topDocs.scoreDocs;
			for (int i = 0; i < topDocs.totalHits; i++){
				Document targetDoc = isearcher.doc(scoreDocs[i].doc);
				System.out.println("内容：" + targetDoc.toString());
			}			
			
		} catch (CorruptIndexException e) {
			e.printStackTrace();
		} catch (LockObtainFailedException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			if(isearcher != null){
				try {
					isearcher.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(directory != null){
				try {
					directory.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public static Document getDoc(String id, String text){
		Document doc = new Document();
		doc.add(new Field("ID", id, Field.Store.YES, Field.Index.NOT_ANALYZED));
		doc.add(new Field("text", text, Field.Store.YES, Field.Index.ANALYZED));
		return doc;
	}
	
	public static void main(String[] args){
		
		//Lucene Document的域名
		String fieldName = "text";
		// 检索内容
		String text1 = "户外";
		String text2 = "户外 亲子";
		String text3 = "亲子 温泉 农家乐";
		String text4 = "温泉";
		String text5 = "农家乐 采摘 火锅";
		String text6 = "采摘";
		String text7 = "火锅";
		
		//实例化IKAnalyzer分词器
		Analyzer analyzer = new IKAnalyzer();
	 
		
		Directory directory = null;
		IndexWriter iwriter = null;
		IndexSearcher isearcher = null;
		try {
			//建立内存索引对象
			directory = new RAMDirectory();	 
			iwriter = new IndexWriter(directory, analyzer, true , IndexWriter.MaxFieldLength.LIMITED);
			iwriter.addDocument(getDoc("1",text1));
			iwriter.addDocument(getDoc("2",text2));
			iwriter.addDocument(getDoc("3",text3));
			iwriter.addDocument(getDoc("4",text4));
			iwriter.addDocument(getDoc("5",text5));
			iwriter.addDocument(getDoc("6",text6));
			iwriter.addDocument(getDoc("7",text7));
			iwriter.close();
			
		    //实例化搜索器   
			isearcher = new IndexSearcher(directory);			
			//在索引器中使用IKSimilarity相似度评估器
			isearcher.setSimilarity(new IKSimilarity());
			
			String keyword = "火锅 采摘 户外";
			
			//使用IKQueryParser查询分析器构造Query对象
			Query query = IKQueryParser.parse(fieldName, keyword);
			
			//搜索相似度最高的5条记录
			TopDocs topDocs = isearcher.search(query , 5);
			System.out.println("命中：" + topDocs.totalHits);
			//输出结果
			ScoreDoc[] scoreDocs = topDocs.scoreDocs;
			for (int i = 0; i < topDocs.totalHits; i++){
				Document targetDoc = isearcher.doc(scoreDocs[i].doc);
				System.out.println("内容：" + targetDoc.toString());
			}			
			
		} catch (CorruptIndexException e) {
			e.printStackTrace();
		} catch (LockObtainFailedException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			if(isearcher != null){
				try {
					isearcher.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(directory != null){
				try {
					directory.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
