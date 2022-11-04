package beans;

public class Test {
    String message;

	public Test() {
		
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Test [message=" + message + "]";
	}
}