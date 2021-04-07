package com.example.demo.model;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("basic_infoVO")
public class Basic_infoVO {
	
	Integer pu_basic_info_target_amount, pu_basic_info_pro_no, pu_basic_info_mem_code, info_day;
	String pu_basic_info_proj_sub, pu_basic_info_repre_img, pu_basic_info_cate,
		parsedate, info_end_date, info_start_date;
	Date pu_basic_info_end_date, pu_basic_info_start_date;

	SimpleDateFormat sdf;
	
	MultipartFile rePreFile;
	
	public Integer getPu_basic_info_target_amount() {
		return pu_basic_info_target_amount;
	}
	public void setPu_basic_info_target_amount(Integer pu_basic_info_target_amount) {
		this.pu_basic_info_target_amount = pu_basic_info_target_amount;
	}
	public String getPu_basic_info_proj_sub() {
		return pu_basic_info_proj_sub;
	}
	public void setPu_basic_info_proj_sub(String pu_basic_info_proj_sub) {
		this.pu_basic_info_proj_sub = pu_basic_info_proj_sub;
	}
	public String getPu_basic_info_repre_img() {
		return pu_basic_info_repre_img;
	}
	public void setPu_basic_info_repre_img(String pu_basic_info_repre_img) {
		this.pu_basic_info_repre_img = pu_basic_info_repre_img;
	}
	public String getPu_basic_info_cate() {
		return pu_basic_info_cate;
	}
	public void setPu_basic_info_cate(String pu_basic_info_cate) {
		this.pu_basic_info_cate = pu_basic_info_cate;
	}
	
	public Integer getPu_basic_info_pro_no() {
		return pu_basic_info_pro_no;
	}
	public void setPu_basic_info_pro_no(Integer pu_basic_info_pro_no) {
		this.pu_basic_info_pro_no = pu_basic_info_pro_no;
	}
	public Date getPu_basic_info_end_date() {
		return pu_basic_info_end_date;
	}
	public void setPu_basic_info_end_date(Date pu_basic_info_end_date) {
		this.pu_basic_info_end_date = pu_basic_info_end_date;

		Calendar c = Calendar.getInstance(); // 비교할 시간
        c.setTime(pu_basic_info_end_date);  // c의 시간을 설정하겠다. da의 시간으로 
        c.clear(Calendar.HOUR);  // 모든 시간 필드의 값을 클리어 합니다.
        c.clear(Calendar.MINUTE); // 모든 시간 필드의 값을 클리어 합니다.
        c.clear(Calendar.SECOND);  // 모든 시간 필드의 값을 클리어 합니다.
        c.clear(Calendar.MILLISECOND); // 시간, 분, 초, 밀리초 초기화

        Calendar c2 = Calendar.getInstance(); // 현재 시간
        c2.clear(Calendar.HOUR); // 모든 시간 필드의 값을 클리어 합니다.
        c2.clear(Calendar.MINUTE);  // 모든 시간 필드의 값을 클리어 합니다.
        c2.clear(Calendar.SECOND);  // 모든 시간 필드의 값을 클리어 합니다.
        c2.clear(Calendar.MILLISECOND); // 시간, 분, 초, 밀리초 초기화
        long dDayDiff = c.getTimeInMillis() - c2.getTimeInMillis();  // 특정 날짜, 시간부터 현재까지 몇초(분) 지났는지 
        info_day = (int)(Math.floor(TimeUnit.HOURS.convert(dDayDiff, TimeUnit.MILLISECONDS) / 24f));

        SimpleDateFormat aaabb = new SimpleDateFormat("yyyyMMdd");
        parsedate = aaabb.format(pu_basic_info_end_date);
        
	}
	public Integer getInfo_day() {
		return info_day;
	}
	public void setInfo_day(Integer info_day) {
		this.info_day = info_day;
	}
	public MultipartFile getRePreFile() {
		return rePreFile;
	}
	public void setRePreFile(MultipartFile rePreFile) {
		this.rePreFile = rePreFile;
		this.pu_basic_info_repre_img = rePreFile.getOriginalFilename();
	}
	
	public Integer getPu_basic_info_mem_code() {
		return pu_basic_info_mem_code;
	}
	public void setPu_basic_info_mem_code(Integer pu_basic_info_mem_code) {
		this.pu_basic_info_mem_code = pu_basic_info_mem_code;
	}
	public String getParsedate() {
		return parsedate;
	}
	public void setParsedate(String parsedate) {
		this.parsedate = parsedate;
	}	
	public String getInfo_end_date() {
		return info_end_date;
	}
	public void setInfo_end_date(String info_end_date) {
		this.info_end_date = info_end_date;
		
		sdf = new SimpleDateFormat("yyyyMMdd");
		
		try {
			this.pu_basic_info_end_date = sdf.parse(info_end_date);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public String getInfo_start_date() {
		return info_start_date;
	}
	public void setInfo_start_date(String info_start_date) {
		this.info_start_date = info_start_date;
		sdf = new SimpleDateFormat("yyyyMMdd");
		
		try {
			this.pu_basic_info_start_date = sdf.parse(info_start_date);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Date getPu_basic_info_start_date() {
		return pu_basic_info_start_date;
	}
	public void setPu_basic_info_start_date(Date pu_basic_info_start_date) {
		this.pu_basic_info_start_date = pu_basic_info_start_date;
	}
	
	
}
