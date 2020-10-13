package com.snaptag.exeption;

public enum ResponseErrorCode {
	NOT_ENTERED_FILE(400, "원본 파일이 업로드되지 않았습니다."), NOT_ENTERED_BUSINESS_USER(400,
			"사업자 등록증 파일이 업로드되지 않았습니다."), NOT_ENTERED_USER(400, "회원정보가 입력되지 않았습니다."), NOT_ENTERED_PASSWORD(400,
					"비밀번호가 입력되지 않았습니다."), NOT_ENTERED_MOBILE(400, "휴대폰번호가 입력되지 않았습니다."), NOT_ENTERED_EMAIL(400,
							"이메일주소가 입력되지 않았습니다."), NOT_EXIST_EMAIL(400, "존재하지 않는 이메일주소 입니다."), NOT_EXIST_MOBILE(400,
									"존재하지 않는 휴대폰번호 입니다."), NOT_EXIST_USER(400, "존재하지 않는 회원 입니다."), NOT_ENTERED_SRC(400,
											"원본 이미지 URL이 입력되지 않았습니다."), NOT_ENTERED_DATA_NAME(400,
													"데이터명이 입력되지 않았습니다."), ENTERED_INVALID(400,
															"입력하신 정보가 유효하지 않습니다."), ENTERED_INVALID_EMAIL(400,
																	"입력하신 이메일주소의 형식이 유효하지 않습니다."), EXPIRED_VERIFICATION_CODE(
																			400,
																			"만료된 인증번호 입니다."), INVALID_VERIFICATION_CODE(
																					400,
																					"인증번호가 유효하지 않습니다."), NOT_CERTIFIED(
																							400,
																							"인증되지 않았습니다."), INVALID_ENTERED_PASSWORD(
																									400,
																									"입력한 비밀번호가 일치 하지 않습니다."), LEAVED_USER(
																											400,
																											"탈퇴한 회원입니다."), INVALID_SEQ(
																													400,
																													"유효하지 않은 시퀀스입니다."), REJECT(
																															403,
																															"심사에서 반려되었습니다. 반려 사유를 확인해주세요."), JUDGING(
																																	403,
																																	"아직 심사가 완료되지 않았습니다."), ALREADY_EXIST_ACCOUNT(
																																			409,
																																			"이미 존재하는 회원입니다."), ALREADY_EXIST_EMAIL(
																																					409,
																																					"이미 존재하는 이메일입니다."), ALREADY_EXIST_USER(
																																							409,
																																							"이미 존재하는 회원입니다."), FILE_UTIL_ERROR(
																																									500,
																																									"FileUtil Error");

	private final int value;
	private final String message;

	private ResponseErrorCode(int value, String message) {
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