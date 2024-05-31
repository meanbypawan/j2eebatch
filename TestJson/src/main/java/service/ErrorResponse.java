package service;

public class ErrorResponse {
  private int statusCode;
  private String errorMessage;
public ErrorResponse(int statusCode, String errrorMessage) {
	this.statusCode = statusCode;
	this.errorMessage = errrorMessage;
}
public int getStatusCode() {
	return statusCode;
}
public void setStatusCode(int statusCode) {
	this.statusCode = statusCode;
}
public String getErrorMessage() {
	return errorMessage;
}
public void setErrorMessage(String errrorMessage) {
	this.errorMessage = errrorMessage;
}
  
}
