package cn.TaylorPublic.Service;

public class UserPublicException extends Exception {

	public UserPublicException(){
		super();
	}
	public UserPublicException(String message, Throwable cause){
		super(message, cause);
	}
	public UserPublicException(String message){
		super(message);
	}
	public UserPublicException(Throwable cause){
		super(cause);
	}
}
