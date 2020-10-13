package com.snaptag.result;

public enum ResponseSuccessMessage {
	SUCCESS_ID_CHECK(200, "사용 가능한 이메일입니다."), SUCCESS_SIGNUP(200, "회원가입이 완료되었습니다."), SUCCESS_LOGIN(200,
			"로그인에 성공했습니다."), SUCCESS_SAVE_BUSI_FILE(200, "사업자 등록증 이미지 업로드 성공."), SUCCESS_CREATE_SEQ(200,
					"데이터가 생성되었습니다."), SUCCESS_UPDATE_OUTPUT(200, "Output 파일이 업데이트 되었습니다."), SUCCESS_SAVE_SRC(200,
							"파일 저장이 완료되었습니다."), SUCCESS_GET_DATA(200, "데이터 추출이 완료되었습니다.");

	private final int value;
	private final String message;

	private ResponseSuccessMessage(int value, String message) {
		this.value = value;
		this.message = message;
	}

	public int getValue() {
		return this.value;
	}

	public String getMessage() {
		return this.message;
	}
}