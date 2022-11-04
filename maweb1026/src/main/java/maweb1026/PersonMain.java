package maweb1026;


import java.util.*;
public class PersonMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
       List  data=new ArrayList();
       data.add(new Person("A","111"));
       data.add(new Person("A","222"));
       data.add(new Person("C","333"));
       data.forEach(System.out::println);
       Object o1=data.get(0);
       Object o2=data.get(1);
       Person p1=(Person)o1;
       Person p2=(Person)o2;
       System.out.println(p1.equals(p2));
       
	}

}
