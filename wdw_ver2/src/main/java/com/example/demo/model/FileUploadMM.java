package com.example.demo.model;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadMM {
	public static String fileUpload(MultipartFile ff, HttpServletRequest request,String bavo) {
		String path = request.getRealPath("/up");
		path = "C:\\박정환\\JavaHTML\\sts_mvc_work\\wdw\\src\\main\\webapp\\img_up\\project\\"+bavo;
		
		String res = fileNewName(path, ff.getOriginalFilename());
		
		try {
			FileOutputStream fos = new FileOutputStream(path+"\\"+res);
			
			fos.write(ff.getBytes());
			
			fos.close();
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		
		return res;
	}
	
	
	static String fileNewName(String path,String ff) {
		
		path +="\\";
		try {
			
			int pos = ff.lastIndexOf(".");
			String domain = ff.substring(0,pos);
			String ext = ff.substring(pos);
			
			File newfile = new File(path+ff);
			int i = 0;
			while(newfile.exists()) {
				
				i++;
				ff= domain+"_"+i+ext;
				newfile = new File(path+ff);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());	
			
		}
		return ff;
				
	}
	
	public static void fileDelete(String res) {
		
			String path = "C:\\박정환\\JavaHTML\\sts_mvc_work\\wdw\\src\\main\\webapp\\img_up\\project\\";
			File file = new File(path+res);
			System.out.println("파일 확인"+file.exists());
			if(file.exists()) {
				file.delete();				
				System.out.println("파일을 삭제하였습니다.");
			}else {
				System.out.println("파일이 없습니다.");
			}
		
	}
}
