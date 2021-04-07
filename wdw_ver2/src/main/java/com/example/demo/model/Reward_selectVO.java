package com.example.demo.model;

import java.util.Arrays;

import org.apache.ibatis.type.Alias;

@Alias("reward_selectVO")
public class Reward_selectVO {

	Integer re_input_pay; 
	Integer [] re_input_cnt;
	String [] re_input_chk;
	
	public Integer getRe_input_pay() {
		return re_input_pay;
	}
	public void setRe_input_pay(Integer re_input_pay) {
		this.re_input_pay = re_input_pay;
	}
	public Integer[] getRe_input_cnt() {
		return re_input_cnt;
	}
	public void setRe_input_cnt(Integer[] re_input_cnt) {
		this.re_input_cnt = re_input_cnt;
	}
	public String[] getRe_input_chk() {
		return re_input_chk;
	}
	public void setRe_input_chk(String[] re_input_chk) {
		this.re_input_chk = re_input_chk;
	}
	
	@Override
	public String toString() {
		return "Reward_selectVO [re_input_pay=" + re_input_pay + ", re_input_cnt=" + Arrays.toString(re_input_cnt)
				+ ", re_input_chk=" + Arrays.toString(re_input_chk) + "]";
	}
	
	
}
	