package com.example.demo.model.main;

import org.apache.ibatis.type.Alias;

@Alias("salesRecord")

public class SalesRecord implements Comparable<SalesRecord>{

	int amount, totQuantity, purhistory_code;
	
	
	public int getPurhistory_code() {
		return purhistory_code;
	}
	public void setPurhistory_code(int purhistory_code) {
		this.purhistory_code = purhistory_code;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getTotQuantity() {
		return totQuantity;
	}
	public void setTotQuantity(int totQuantity) {
		this.totQuantity = totQuantity;
	}

	@Override
	public String toString() {
		return "SalesRecord [amount=" + amount + ", totQuantity=" + totQuantity + ", purhistory_code=" + purhistory_code
				+ "]";
	}
	
	@Override
	public int compareTo(SalesRecord o) {
		
		if(this.amount > o.amount) {
			return -1;
		}else if(this.amount == o.amount) {
			if(this.totQuantity > o.totQuantity) {
				return -1;
			}
		}
		return 1;
	}
	
	
	
}
