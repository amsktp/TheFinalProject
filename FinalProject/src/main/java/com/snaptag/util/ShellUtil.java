package com.snaptag.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

public class ShellUtil {
	public static Map<Integer, String> execCommand(String... str) {
		Map<Integer, String> map = new HashMap();
		ProcessBuilder pb = new ProcessBuilder(str);
		pb.redirectErrorStream(true);
		Process process = null;

		try {
			process = pb.start();
		} catch (IOException var9) {
			var9.printStackTrace();
		}

		BufferedReader reader = null;
		if (process != null) {
			reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
		}

		StringBuilder stringBuilder = new StringBuilder();

		try {
			String line;
			if (reader != null) {
				while ((line = reader.readLine()) != null) {
					stringBuilder.append(line).append("\n");
				}
			}
		} catch (IOException var11) {
			var11.printStackTrace();
		}

		try {
			if (process != null) {
				process.waitFor();
			}
		} catch (InterruptedException var8) {
			var8.printStackTrace();
		}

		if (process != null) {
			map.put(0, String.valueOf(process.exitValue()));
		}

		try {
			map.put(1, stringBuilder.toString());
		} catch (StringIndexOutOfBoundsException var10) {
			if (stringBuilder.toString().length() == 0) {
				return map;
			}
		}

		return map;
	}
}