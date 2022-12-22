package Model;

public class GoodsDTO {
	
	private int Prod_Number;
	private String Prod_Name;
	private int Prod_Price;
	private String Prod_Desc;
	
	public GoodsDTO(int prod_Number, String prod_Name, int prod_Price, String prod_Desc) {
		super();
		Prod_Number = prod_Number;
		Prod_Name = prod_Name;
		Prod_Price = prod_Price;
		Prod_Desc = prod_Desc;
	}

	public int getProd_Number() {
		return Prod_Number;
	}

	public void setProd_Number(int prod_Number) {
		Prod_Number = prod_Number;
	}

	public String getProd_Name() {
		return Prod_Name;
	}

	public void setProd_Name(String prod_Name) {
		Prod_Name = prod_Name;
	}

	public int getProd_Price() {
		return Prod_Price;
	}

	public void setProd_Price(int prod_Price) {
		Prod_Price = prod_Price;
	}

	public String getProd_Desc() {
		return Prod_Desc;
	}

	public void setProd_Desc(String prod_Desc) {
		Prod_Desc = prod_Desc;
	}
	

}
