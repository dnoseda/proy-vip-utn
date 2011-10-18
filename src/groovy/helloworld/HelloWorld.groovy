package helloworld;
public class HelloWorld {

	private String name;

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public String greet() {
		return "Hello " + name;
	}

	public static void main(String[] args) {
		HelloWorld helloWorld = new HelloWorld();
		helloWorld.setName("Groovy");
		System.out.println(helloWorld.greet());
	}
}