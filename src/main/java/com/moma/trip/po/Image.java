package com.moma.trip.po;

import java.io.Serializable;
import java.util.Date;

public class Image implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -53589735293212834L;
	private String imageId;
	private String ownerId;
	private String imagesType;
	private String server;
	private String path;
	private String imageName;
	private String imageDesc;
	private String type;
	private String sort;
	private Date createTime;
	private Long fileSize;
	private String linkURL;

	public String getImageId() {
		return imageId;
	}

	public void setImageId(String imageId) {
		this.imageId = imageId;
	}

	public String getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}

	public String getImagesType() {
		return imagesType;
	}

	public void setImagesType(String imagesType) {
		this.imagesType = imagesType;
	}

	public String getServer() {
		return server;
	}

	public void setServer(String server) {
		this.server = server;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getImageDesc() {
		return imageDesc;
	}

	public void setImageDesc(String imageDesc) {
		this.imageDesc = imageDesc;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Long getFileSize() {
		return fileSize;
	}

	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}

	public String getLinkURL() {
		return linkURL;
	}

	public void setLinkURL(String linkURL) {
		this.linkURL = linkURL;
	}

	@Override
	public String toString() {
		return "Image [imageId=" + imageId + ", ownerId=" + ownerId + ", imagesType=" + imagesType + ", server="
				+ server + ", path=" + path + ", imageName=" + imageName + ", imageDesc=" + imageDesc + ", type=" + type
				+ ", sort=" + sort + ", createTime=" + createTime + ", fileSize=" + fileSize + "]";
	}

}
