package Model;

import java.io.Serializable;

public class CartDTO implements Serializable {

	 String name;	// 과일명
	 int price;		// 가격
	 int cnt;		// 수량
	 
	 
	public CartDTO() {
		super();
	}


	public CartDTO(String name, int price, int cnt) {
		super();
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	 
	 
	 
	
	
	
	
}
