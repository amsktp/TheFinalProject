package com.snaptag.data.model;

import java.util.List;

public class DataVO {
	int dataNumber;
	int dataUserNumber;
	String dataName;
	boolean dataIsActive;
	String dataRegDate;
	String dataDescription;
	String dataScale;
	String dataStrength;
	List<SeqVO> sequenceList;

	public int getDataNumber() {
		return this.dataNumber;
	}

	public int getDataUserNumber() {
		return this.dataUserNumber;
	}

	public String getDataName() {
		return this.dataName;
	}

	public boolean isDataIsActive() {
		return this.dataIsActive;
	}

	public String getDataRegDate() {
		return this.dataRegDate;
	}

	public String getDataDescription() {
		return this.dataDescription;
	}

	public String getDataScale() {
		return this.dataScale;
	}

	public String getDataStrength() {
		return this.dataStrength;
	}

	public List<SeqVO> getSequenceList() {
		return this.sequenceList;
	}

	public void setDataNumber(int dataNumber) {
		this.dataNumber = dataNumber;
	}

	public void setDataUserNumber(int dataUserNumber) {
		this.dataUserNumber = dataUserNumber;
	}

	public void setDataName(String dataName) {
		this.dataName = dataName;
	}

	public void setDataIsActive(boolean dataIsActive) {
		this.dataIsActive = dataIsActive;
	}

	public void setDataRegDate(String dataRegDate) {
		this.dataRegDate = dataRegDate;
	}

	public void setDataDescription(String dataDescription) {
		this.dataDescription = dataDescription;
	}

	public void setDataScale(String dataScale) {
		this.dataScale = dataScale;
	}

	public void setDataStrength(String dataStrength) {
		this.dataStrength = dataStrength;
	}

	public void setSequenceList(List<SeqVO> sequenceList) {
		this.sequenceList = sequenceList;
	}
}