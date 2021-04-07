CREATE TABLE member(
	NO NUMBER CONSTRAINT member_no_pk PRIMARY key,
	id varchar2(50) NOT null,
	pname varchar2(50) NOT null,
	pw varchar2(50) NOT null,
	phone number(11) NOT null,
	img varchar2(100),
	business_license varchar2(12),
	address varchar2(100),
	wallet number
);

CREATE TABLE business(
	license varchar2(12) CONSTRAINT business_license_pk PRIMARY KEY,
	represent varchar2(10) NOT NULL,
	email varchar2(50) NOT NULL,
	com_name varchar2(50) NOT NULL,
	address varchar2(100) NOT NULL,
	img varchar2(100)
);

CREATE TABLE idea(
	NO NUMBER CONSTRAINT idea_no_pk PRIMARY key,
	writer varchar2(50),
	cate varchar2(10),
	title varchar2(100),
	content varchar2(4000),
	img varchar2(100),
	regdate timestamp,
	gid number(10),
	seq number(10),
	lev number(10),
	cnt number(10)
);

CREATE TABLE idea_comment(
	NO NUMBER CONSTRAINT comment_no_pk PRIMARY KEY,
	upper_no NUMBER NOT NULL,
	content varchar2(4000),
	writer varchar2(50),
	regdate timestamp,
	gid number(10),
	seq number(10),
	lev number(10),
	cnt number(10)
);

CREATE TABLE project(
	code varchar2(10) CONSTRAINT project_code_pk PRIMARY key,
	license varchar2(12) NOT NULL,
	cate varchar2(10) NOT NULL,
	state varchar2(10) NOT NULL,
	regdate timestamp NOT null,	
	startdate timestamp,
	endate DATE,
	target_amount NUMBER NOT null,
	now_amount NUMBER,
	content varchar2(4000),
	img varchar2(100),
	heart number
);

CREATE TABLE project_board(
	NO NUMBER CONSTRAINT pro_board_no_pk PRIMARY KEY,
	code varchar2(10) NOT NULL,
	regdate timestamp,
	cate varchar2(10) NOT NULL,
	title varchar2(50) NOT NULL,
	content varchar2(4000)	
);

CREATE TABLE proboard_comment(
	NO NUMBER CONSTRAINT proboard_comment_no_pk PRIMARY KEY,
	upper_no number NOT NULL,
	content varchar2(4000),
	writer varchar2(50),
	regdate timestamp NOT null,
	gid number(10),
	seq number(10),
	lev number(10),
	cnt number(10)
);

CREATE TABLE purhistory(
	code varchar2(10) CONSTRAINT purhistory_pk PRIMARY key,
	reward varchar2(100),
	buyer varchar2(10),
	funding_date timestamp,
	amount NUMBER,
	cnt number
);

CREATE TABLE site(
	NO NUMBER CONSTRAINT site_no_pk PRIMARY KEY,
	cate varchar2(10) NOT null,
	regdate timestamp,
	title varchar2(50) NOT null,
	content varchar2(4000),
	img varchar2(100),
	cnt number
);

SELECT * FROM MEMBER;
SELECT * FROM MEMBER WHERE id ='adsf@aaaa.com';

insert into member
		(member_no, member_id, member_pname, member_pw, member_phone, member_img, member_business_license, member_address, member_point)
		values
		(300, 'asas@ggg.com', '이애플', 'asas1234!!', 0, null, null, null, 0);

SELECT * from(
select * from project WHERE NOT PRO_STARTDATE IS NULL order by PRO_STARTDATE DESC
) WHERE rownum <= 6;

SELECT * from(
select * from project WHERE pro_state='얼리버드' ORDER BY PRO_STARTDATE DESC
) WHERE rownum <= 3;



SELECT * from(
	select * from PURHISTORY WHERE PURHISTORY_FUNDING_DATE >= (
		SELECT TO_date('2020-12-13', 'yyyy-mm-dd') FROM dual 
	)
);

SELECT * FROM PURHISTORY;

SELECT PURHISTORY_CODE, sum(PURHISTORY_AMOUNT) AS amount, sum(PURHISTORY_CNT) 
FROM PURHISTORY 
GROUP BY PURHISTORY_CODE 
ORDER BY amount DESC ;



SELECT PURHISTORY_CODE, sum(PURHISTORY_AMOUNT) AS amount, sum(PURHISTORY_CNT) AS totQuantity
FROM PURHISTORY 
WHERE PURHISTORY_FUNDING_DATE >= (
		SELECT TO_date('2020-12-13', 'yyyy-mm-dd') FROM dual 
	)
GROUP BY PURHISTORY_CODE 
ORDER BY amount DESC ;

SELECT PURHISTORY_CODE, sum(PURHISTORY_AMOUNT) AS amount, sum(PURHISTORY_CNT) AS totQuantity
FROM PURHISTORY 
WHERE PURHISTORY_FUNDING_DATE >= (SELECT TO_date('2020-12-12', 'yyyy-mm-dd') FROM dual) 
AND PURHISTORY_FUNDING_DATE < (SELECT TO_date('2020-12-13', 'yyyy-mm-dd') FROM dual) 
GROUP BY PURHISTORY_CODE 
ORDER BY amount DESC ;



SELECT PURHISTORY_CODE, sum(PURHISTORY_AMOUNT) AS amount, sum(PURHISTORY_CNT) AS totQuantity
FROM PURHISTORY 
WHERE PURHISTORY_FUNDING_DATE >= (
		SELECT TO_CHAR(SYSDATE , 'yyyy-mm-dd') FROM dual 
	)
GROUP BY PURHISTORY_CODE 
ORDER BY amount DESC ;

SELECT * FROM PROJECT p;
SELECT * from(
SELECT (PRO_NOW_AMOUNT-PRO_TARGET_AMOUNT) AS ss1 ,p.* FROM  PROJECT p)
ORDER BY ss1 DESC; 


SELECT * FROM PURHISTORY p;

SELECT PURHISTORY_CODE ,p.PURHISTORY_FUNDING_DATE,sum(PURHISTORY_AMOUNT) ss  FROM PURHISTORY p GROUP BY PURHISTORY_FUNDING_DATE, PURHISTORY_CODE;





SELECT PURHISTORY_CODE, sum(PURHISTORY_AMOUNT) AS amount, sum(PURHISTORY_CNT) AS totQuantity
FROM PURHISTORY 
WHERE PURHISTORY_FUNDING_DATE >= SYSDATE-1 AND PURHISTORY_FUNDING_DATE < SYSDATE 
GROUP BY PURHISTORY_CODE 
ORDER BY amount DESC ;


select * from(
				select * from project where pro_code IN ('c1111', 'a1', 'c5', 'd5','d3','f1')				
				order by PRO_NOW_AMOUNT desc
			) where rownum <= 6;

SELECT BUSINESS_LICENSE FROM BUSINESS WHERE MONTHS_BETWEEN(SYSDATE, BUSINESS_LICENSE_REGDATE)<=12*5;		
	
SELECT * FROM (
SELECT * FROM project 
WHERE PRO_STATE IN ('진행', '얼리버드') 
AND PRO_LICENSE in (
	SELECT BUSINESS_LICENSE FROM BUSINESS
	WHERE MONTHS_BETWEEN(SYSDATE, BUSINESS_LICENSE_REGDATE)<=12*5)
ORDER BY PRO_NOW_AMOUNT DESC)
WHERE rownum <= 5;



