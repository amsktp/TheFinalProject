package com.snaptag.util;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.web.multipart.MultipartFile;

public class ImageUtil {
	static final String PREFIX = "/var/lib/tomcat8/webapps";

	public static String SaveImage(String insertDir, String fileName, MultipartFile image, String type) {
		long time = System.currentTimeMillis();
		SimpleDateFormat dayTime = new SimpleDateFormat("yyMMdd_hhmmss");
		dayTime.setTimeZone(TimeZone.getTimeZone("UTC"));
		String currentTime = dayTime.format(new Date(time));
		String extension = FilenameUtils.getExtension(image.getOriginalFilename());
		String imageDBInsertURL = insertDir + currentTime + "_" + fileName + "." + extension;
//		String imageSaveURL = "/var/lib/tomcat8/webapps" + insertDir + currentTime + "_" + fileName + "." + extension;

		insertDir = "";
		
		String imageSaveURL = "C:\\Users\\LG\\image\\" + insertDir + currentTime + "_" + fileName + "." + extension;
		
		try {
			IOUtils.copy(image.getInputStream(), new FileOutputStream(new File(imageSaveURL)));
			return imageDBInsertURL;
		} catch (Exception var12) {
			var12.printStackTrace();
			return "Failed";
		}
	}

	public static void deleteImage(String imageUrl) {
		try {
			File deleteFile = new File("/var/lib/tomcat8/webapps" + imageUrl);
			deleteFile.delete();
		} catch (Exception var2) {
			var2.printStackTrace();
		}

	}
}