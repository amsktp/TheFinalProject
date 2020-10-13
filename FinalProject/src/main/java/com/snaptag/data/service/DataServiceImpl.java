package com.snaptag.data.service;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.snaptag.data.dao.DataDao;
import com.snaptag.data.model.CreateLabelBulkReqBody;
import com.snaptag.data.model.DataVO;
import com.snaptag.data.model.SeqVO;
import com.snaptag.exeption.ResponseErrorCode;
import com.snaptag.result.ResponseSuccessMessage;
import com.snaptag.result.SuccessResponseBody;
import com.snaptag.util.ImageUtil;
import com.snaptag.util.ShellUtil;

@Service
public class DataServiceImpl implements DataService {

	private static final Logger log = LoggerFactory.getLogger(DataServiceImpl.class);

	@Autowired
	public DataDao dataDAO;
	

	public String saveSrc(MultipartFile file, String type) {
		String url = "";
		if (type.equals("STICKER")) {
			url = ImageUtil.SaveImage("/generatorImage/src/logo/", "logo", file, type);
		} else if (type.equals("BARCODE")) {
			url = ImageUtil.SaveImage("/generatorImage/src/barcode/", "barcode", file, type);
		} else {
			url = ImageUtil.SaveImage("/src/", "label", file, type);
		}

		if (url.equals("Failed")) {
			throw new RuntimeException(ResponseErrorCode.FILE_UTIL_ERROR.getMessage());
		} else {
		
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + url);
			return "http://15.165.19.174:8080" + url;
		}
		
	}





/*
	@Override
	public SuccessResponseBody createLabelBulk(CreateLabelBulkReqBody reqBody) {
		// TODO Auto-generated method stub
		DataVO dataVO = this.dataDAO.insertData(reqBody.toDataVO());
		SeqVO seqVO = new SeqVO();
		seqVO.setSequenceDataNumber(dataVO.getDataNumber());
		seqVO.setSequenceSourceImageUrl(reqBody.getSequenceSourceImageUrl());
		seqVO.setSeqType("LABEL");
		seqVO.setSeqQrUrl("");
		this.dataDAO.insertSequence(seqVO);
		String alpha = "";
		String beta = "";
		String gamma = "";
		String cmds = "";
		if (reqBody.getChannel().equals("cmyk")) {
			reqBody.setFormat("jpg");
			alpha = reqBody.getStrength();
			beta = reqBody.getStrength();
			gamma = String.valueOf(Integer.valueOf(reqBody.getStrength()) * 3);
			cmds = "sh /daemon/generator/sh/generator/PackageFile.sh " + dataVO.getDataNumber() + " "
					+ seqVO.getSequenceNumber() + " " + reqBody.getAmount() + " 1 "
					+ reqBody.getSequenceSourceImageUrl().replace("http://15.165.19.174:8080/src/", "") + " "
					+ reqBody.getFormat() + " " + reqBody.getChannel() + " sq 1 " + reqBody.getUnit() + " "
					+ reqBody.getDpi() + " " + reqBody.getScale() + " " + alpha + " " + beta + " " + gamma;
		} else if (reqBody.getChannel().equals("luminance")) {
			alpha = "10";
			beta = "10";
			gamma = "0";
			reqBody.setSequenceSourceImageUrl("none");
			reqBody.setFormat("png");
			cmds = "sh /daemon/generator/sh/generator/PackageFile.sh " + dataVO.getDataNumber() + " "
					+ seqVO.getSequenceNumber() + " " + reqBody.getAmount() + " 1 "
					+ reqBody.getSequenceSourceImageUrl().replace("http://15.165.19.174:8080/src/", "") + " "
					+ reqBody.getFormat() + " " + reqBody.getChannel() + " sq 1 " + reqBody.getUnit() + " "
					+ reqBody.getDpi() + " " + reqBody.getScale() + " " + alpha + " " + beta + " " + gamma + " "
					+ reqBody.getHeight() + " " + reqBody.getWidth();
		} else {
			reqBody.setChannel("yuv");
			alpha = String.valueOf(Integer.valueOf(reqBody.getStrength()));
			beta = String.valueOf(Integer.valueOf(reqBody.getStrength()));
			gamma = "0";
			reqBody.setFormat("png");
			cmds = "sh /daemon/generator/sh/generator/PackageFile.sh " + dataVO.getDataNumber() + " "
					+ seqVO.getSequenceNumber() + " " + reqBody.getAmount() + " 1 "
					+ reqBody.getSequenceSourceImageUrl().replace("http://15.165.19.174:8080/src/", "") + " "
					+ reqBody.getFormat() + " " + reqBody.getChannel() + " sq 1 " + reqBody.getUnit() + " "
					+ reqBody.getDpi() + " " + reqBody.getScale() + " " + alpha + " " + beta + " " + gamma;
		}

		System.out.println("*** SHELL COMMAND ***");
		System.out.println(cmds);
		String[] callCmd = new String[]{"/bin/bash", "-c", cmds};
		Map<Integer, String> map = ShellUtil.execCommand(callCmd);
		seqVO.setSequenceOutputImageUrl("/daemon/storage/" + dataVO.getDataNumber() + "/1/" + seqVO.getSequenceNumber()
				+ "." + reqBody.getFormat());
		seqVO.setSeqDownloadUrl("/daemon/storage/" + dataVO.getDataNumber() + "/1/" + seqVO.getSequenceNumber() + "."
				+ reqBody.getFormat());
		this.dataDAO.updateOutputURL(seqVO);
		this.setContents(reqBody, seqVO);
		int amount = Integer.valueOf(reqBody.getAmount());
		int unit = Integer.valueOf(reqBody.getUnit());
		int folderNumbers = amount / unit;
		if (amount % unit != 0) {
			++folderNumbers;
		}

		int fileNumbers = 1;
		SeqVO bulkVO = new SeqVO();

		for (int j = 1; j <= folderNumbers; ++j) {
			for (int i = 1; i <= unit; ++i) {
				if (j != 1 || i != 1) {
					bulkVO.setSequenceNumber(0);
					bulkVO.setSequenceDataNumber(dataVO.getDataNumber());
					bulkVO.setSequenceSourceImageUrl(reqBody.getSequenceSourceImageUrl());
					bulkVO.setSeqType("LABEL");
					bulkVO.setSeqQrUrl("");
					this.dataDAO.insertSequence(bulkVO);
					bulkVO.setSequenceOutputImageUrl("/daemon/storage/" + dataVO.getDataNumber() + "/" + j + "/"
							+ bulkVO.getSequenceNumber() + "." + reqBody.getFormat());
					bulkVO.setSeqDownloadUrl("/daemon/storage/" + dataVO.getDataNumber() + "/" + j + "/"
							+ bulkVO.getSequenceNumber() + "." + reqBody.getFormat());
					this.dataDAO.updateOutputURL(bulkVO);
					this.insertContents(reqBody.getImageUrlList(), "IMG", seqVO.getSequenceNumber());
					this.insertContents(reqBody.getVideoUrlList(), "VIDEO", seqVO.getSequenceNumber());
					this.insertContents(reqBody.getDocuUrlList(), "DOC", seqVO.getSequenceNumber());
					this.insertContents(reqBody.getHomepageUrlList(), "HP", seqVO.getSequenceNumber());
					++fileNumbers;
					if (fileNumbers == amount) {
						break;
					}
				}
			}
		}

		return SuccessResponseBody.of(true, ResponseSuccessMessage.SUCCESS_CREATE_SEQ.getMessage(),
				"/daemon/storage/" + dataVO.getDataNumber());
	}
*/
}
