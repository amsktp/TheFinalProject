package com.snaptag.result;

public class SuccessResponseBody {
	public static final String SUCCESS = "success";
	public static final String FAIL = "fail";
	private String result = "success";
	private String message;
	private Object object;

	public static SuccessResponseBody of(boolean result) {
		SuccessResponseBody successResponseBody = new SuccessResponseBody();
		if (result) {
			successResponseBody.setResult("success");
		} else {
			successResponseBody.setResult("fail");
		}

		return successResponseBody;
	}

	public static SuccessResponseBody of(boolean result, String message) {
		SuccessResponseBody successResponseBody = new SuccessResponseBody();
		if (result) {
			successResponseBody.setResult("success");
		} else {
			successResponseBody.setResult("fail");
		}

		successResponseBody.setMessage(message);
		return successResponseBody;
	}

	public static SuccessResponseBody of(boolean result, String message, Object object) {
		SuccessResponseBody successResponseBody = new SuccessResponseBody();
		if (result) {
			successResponseBody.setResult("success");
		} else {
			successResponseBody.setResult("fail");
		}

		successResponseBody.setMessage(message);
		successResponseBody.setObject(object);
		return successResponseBody;
	}

	public String getResult() {
		return this.result;
	}

	public String getMessage() {
		return this.message;
	}

	public Object getObject() {
		return this.object;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setObject(Object object) {
		this.object = object;
	}
}