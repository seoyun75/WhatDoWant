package com.example.demo.model;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("basic_reqVO") // pom 수정
public class Basic_reqVO {

	String pu_basic_req_reward_circu, pu_basic_req_reward_plan1, pu_basic_req_reward_plan2;
	int pu_basic_req_mem_code=0, pu_basic_req_pro_no=0;

	
	public int getPu_basic_req_mem_code() {
		return pu_basic_req_mem_code;
	}

	public void setPu_basic_req_mem_code(int pu_basic_req_mem_code) {
		this.pu_basic_req_mem_code = pu_basic_req_mem_code;
	}

	public int getPu_basic_req_pro_no() {
		return pu_basic_req_pro_no;
	}

	public void setPu_basic_req_pro_no(int pu_basic_req_pro_no) {
		this.pu_basic_req_pro_no = pu_basic_req_pro_no;
	}

	public String getPu_basic_req_reward_circu() {
		return pu_basic_req_reward_circu;
	}

	public void setPu_basic_req_reward_circu(String pu_basic_req_reward_circu) {
		this.pu_basic_req_reward_circu = pu_basic_req_reward_circu;
	}

	public String getPu_basic_req_reward_plan1() {
		return pu_basic_req_reward_plan1;
	}

	public void setPu_basic_req_reward_plan1(String pu_basic_req_reward_plan1) {
		this.pu_basic_req_reward_plan1 = pu_basic_req_reward_plan1;
	}

	public String getPu_basic_req_reward_plan2() {
		return pu_basic_req_reward_plan2;
	}

	public void setPu_basic_req_reward_plan2(String pu_basic_req_reward_plan2) {
		this.pu_basic_req_reward_plan2 = pu_basic_req_reward_plan2;
	}

	@Override
	public String toString() {
		return "Basic_reqVO [pu_basic_req_reward_circu=" + pu_basic_req_reward_circu + ", pu_basic_req_reward_plan1="
				+ pu_basic_req_reward_plan1 + ", pu_basic_req_reward_plan2=" + pu_basic_req_reward_plan2
				+ ", pu_basic_req_mem_code=" + pu_basic_req_mem_code + ", pu_basic_req_pro_no=" + pu_basic_req_pro_no
				+ "]";
	}

	

}
