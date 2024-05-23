class ABC {
	static {
		System.out.println("ABC's static block executed");
	}
}
class AppMain {
	public static void main(String[] ar) throws Exception {
		Class.forName("ABC");
	}
}
