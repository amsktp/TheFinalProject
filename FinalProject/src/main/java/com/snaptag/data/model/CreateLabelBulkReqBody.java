package com.snaptag.data.model;

import java.util.List;

public class CreateLabelBulkReqBody {
	private String sequenceSourceImageUrl;
	private String dataName;
	private String dataDescription;
	private List<String> imageUrlList;
	private List<String> videoUrlList;
	private List<String> docuUrlList;
	private List<String> homepageUrlList;
	private String amount;
	private String format;
	private String channel;
	private String scale;
	private String dpi;
	private String strength;
	private String unit;
	private int height;
	private int width;

	public DataVO toDataVO() {
		DataVO dataVO = new DataVO();
		dataVO.setDataUserNumber(-1);
		dataVO.setDataName(this.dataName);
		dataVO.setDataDescription(this.dataDescription);
		dataVO.setDataScale(this.scale);
		dataVO.setDataStrength(this.strength);
		return dataVO;
	}

	public String getSequenceSourceImageUrl() {
		return this.sequenceSourceImageUrl;
	}

	public String getDataName() {
		return this.dataName;
	}

	public String getDataDescription() {
		return this.dataDescription;
	}

	public List<String> getImageUrlList() {
		return this.imageUrlList;
	}

	public List<String> getVideoUrlList() {
		return this.videoUrlList;
	}

	public List<String> getDocuUrlList() {
		return this.docuUrlList;
	}

	public List<String> getHomepageUrlList() {
		return this.homepageUrlList;
	}

	public String getAmount() {
		return this.amount;
	}

	public String getFormat() {
		return this.format;
	}

	public String getChannel() {
		return this.channel;
	}

	public String getScale() {
		return this.scale;
	}

	public String getDpi() {
		return this.dpi;
	}

	public String getStrength() {
		return this.strength;
	}

	public String getUnit() {
		return this.unit;
	}

	public int getHeight() {
		return this.height;
	}

	public int getWidth() {
		return this.width;
	}

	public void setSequenceSourceImageUrl(String sequenceSourceImageUrl) {
		this.sequenceSourceImageUrl = sequenceSourceImageUrl;
	}

	public void setDataName(String dataName) {
		this.dataName = dataName;
	}

	public void setDataDescription(String dataDescription) {
		this.dataDescription = dataDescription;
	}

	public void setImageUrlList(List<String> imageUrlList) {
		this.imageUrlList = imageUrlList;
	}

	public void setVideoUrlList(List<String> videoUrlList) {
		this.videoUrlList = videoUrlList;
	}

	public void setDocuUrlList(List<String> docuUrlList) {
		this.docuUrlList = docuUrlList;
	}

	public void setHomepageUrlList(List<String> homepageUrlList) {
		this.homepageUrlList = homepageUrlList;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}

	public void setDpi(String dpi) {
		this.dpi = dpi;
	}

	public void setStrength(String strength) {
		this.strength = strength;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public void setWidth(int width) {
		this.width = width;
	}
}