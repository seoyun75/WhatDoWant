select * from (
	select * from project 
	where pro_state in ('진행','얼리버드')
	and pro_endate <= sysdate+5
	ORDER BY PRO_NOW_AMOUNT/PRO_TARGET_AMOUNT desc
) where rownum <= 5;

select * from project 
where pro_state in ('진행','얼리버드')
and pro_endate <= sysdate+5;

insert into pu_basic_req (pu_basic_req_member_code)	VALUES (3000);

SELECT * FROM PU_BASIC_REQ;

select max(pu_basic_req_pro_no)+1 from pu_basic_req;

insert into pu_basic_req
		(pu_basic_req_member_code, pu_basic_req_pro_no)
		values
		(116, 65);
		
select * from(
	select * from project where pro_code IN
	()
	order by pro_now_amount desc
) WHERE rownum <= 6;

select * from purhistory 
where purhistory_code = 4 
	AND PURHISTORY_BUYER = 'a@aa.aaa'
	AND PURHISTORY_FUNDING_DATE = (
		SELECT TO_date('20201217125355', 'yyyyMMddhhmiss') FROM dual 
	);
	
select * from project_board 
		where project_board_pro_no = 17;
		
select member_pw from member
		where member_id = 'a@a.a' and member_pw = 123;
		
SELECT * FROM PURHISTORY
where purhistory_code = 1
		AND PURHISTORY_BUYER = 'a@aa.aaa';
		
ALTER TABLE PROJECT_BOARD add CONSTRAINTs pro_board_project_fk FOREIGN KEY (PROJECT_BOARD_PRO_NO) REFERENCES project (PRO_code);

ALTER TABLE BUSINESS add CONSTRAINTs business_member_fk FOREIGN KEY (business_license) REFERENCES MEMBER (member_business_license);
ALTER TABLE PROJECT_BOARD add CONSTRAINTs pro_board_project_fk FOREIGN KEY (PROJECT_BOARD_PRO_NO) REFERENCES project (PRO_code);
ALTER TABLE PROJECT_BOARD add CONSTRAINTs pro_board_project_fk FOREIGN KEY (PROJECT_BOARD_PRO_NO) REFERENCES project (PRO_code);

SELECT member_id FROM MEMBER WHERE member_id = 'a@a.a';

update purhistory set purhistory_delivery=SYSDATE 
		where purhistory_buyer='d@dd.ddd' and 
		purhistory_funding_date= ( select TO_DATE('20200415000000','yyyyMMddHH24miss') from dual);
		
SELECT * FROM PROJECT WHERE PRO_CATE = '테크/가전' AND PRO_STATE = '진행';


SELECT PRO_ENDATE - SYSDATE FROM PROJECT WHERE PRO_CODE  = 261;  

SELECT NUMBER(to_char(p.PRO_ENDATE,'yyyy-MM-dd'))-NUMBER(to_char(SYSDATE ,'yyyy-MM-dd')) FROM PROJECT p ;
