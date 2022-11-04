package maweb1026;


public class Person {
	private String name, phone;

	public Person(String name, String phone) {

		this.name = name;
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", phone=" + phone + "]";
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Person) {
			Person px=(Person)obj;
			return this.name.equalsIgnoreCase(px.name);
		}else
			return false;
	}

}
