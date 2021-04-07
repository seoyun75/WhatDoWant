package com.example.demo.model;

import org.apache.ibatis.type.Alias;

@Alias("accountVO")
public class AccountVO {
	String account_number, bank;
	int account_member_no;
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public int getAccount_member_no() {
		return account_member_no;
	}
	public void setAccount_member_no(int account_member_no) {
		this.account_member_no = account_member_no;
	}
	@Override
	public String toString() {
		return "AccountVO [account_number=" + account_number + ", bank=" + bank + ", account_member_no="
				+ account_member_no + "]";
	}
}
