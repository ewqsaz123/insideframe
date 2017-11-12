--------------테이블 생성----------------
CREATE TABLE member (
	email varchar(45) not null primary key,
	pw varchar(45) not null,
	name varchar(50) not null,
	mtype varchar(15) not null,
	admin int default 0,
	image varchar(100),
	birth varchar(15),
	height int,
	weight int,
	phone varchar(20),
	sex varchar(4)
);

CREATE TABLE career (
	careerno int auto_increment primary key,
	email varchar(45) not null,
	type varchar(15),
	title varchar(45),
	roll varchar(15),
	date varchar(15)
);


CREATE TABLE board (
	idx int auto_increment primary key,
	writer varchar(45),
	btitle varchar(100),
	bdate varchar(20),
	btype varchar(20),
	bcount int
);

CREATE TABLE movieinfo(
	movieno int primary key,
	mtitle varchar(45),
	mimage varchar(100),
	director varchar(45),
	link varchar(100),
	category varchar(45),
	mdate varchar(15),
	likeno int,
	count int
);

CREATE TABLE categoryno(
	category varchar(45) primary key,
	no int,
	seq int
);

--------------테이블 삭제----------------
drop table member;
drop table profile;
drop table career;
drop table movieinfo;

--------------테이블 조회----------------
SELECT * FROM member;

select * from member where mtype = '배우' and sex='남';

SELECT * FROM profile;

select * from member where email = 'ysung1223@nate.com';

delete from member where email = 'ysung1223@nate.com';

alter table member drop column profileno;

alter table member add column sex varchar(4);

alter table member modify weight int;


alter table member modify height int;

ALTER TABLE member CHANGE type mtype varchar(15);

drop table member;

insert into member(email,pw,name,mtype,sex,height,birth) values("ysung1223@nate.com","1234","여성","감독","여",170,"19940404");
insert into member(email,pw,name,mtype,sex,height,birth) values("ysung1@nate.com","4324","봉수","배우","여",170,"19760404");
insert into member(email,pw,name,mtype,sex,height,birth) values("ysung321@nate.com","4","기철","배우","여",168,"19960404");
insert into member(email,pw,name,mtype,sex,height,birth) values("ysung12321@nate.com","44","길동","감독","남",190,"19910404");
insert into member(email,pw,name,mtype,sex,height,birth) values("ysud1@nate.com","4334","동건","배우","남",177,"19840404");
insert into member(email,pw,name,mtype,sex,height,birth) values("ysung1223@nde.com","1234","여성","감독","남",187,"19890404");

insert into member(email,pw,name,mtype,sex,height,birth) values("ydsfdg1@nate.com","4324","봉수","배우","남",163,"19870404");
insert into member(email,pw,name,mtype,sex,height,birth) values("yzdg321@nate.com","4","기철","배우","여",153,"19970404");
insert into member(email,pw,name,mtype,sex,height,birth) values("yzg12321@nate.com","44","길동","감독","남",188,"19980404");
insert into member(email,pw,name,mtype,sex,height,birth) values("fsgwgd1@nate.com","4334","동건","배우","남",184,"19950404");
insert into member(email,pw,name,mtype,sex,height,birth) values("231223@nate.com","1234","여성","감독","여",123,"19960404");

insert into member(email,pw,name,mtype,sex,birth) values("ysaf1@nate.com","4324","봉수","감독","남","19940404");
insert into member(email,pw,name,mtype,sex,birth) values("afng321@nate.com","4","기철","배우","남","19980404");
insert into member(email,pw,name,mtype,sex,birth) values("yhgg12321@nate.com","44","길동","배우","남","19990404");
insert into member(email,pw,name,mtype,sex,birth) values("ykhd1@nate.com","4334","동건","배우","남","19930404");
insert into member(email,pw,name,mtype,sex,birth) values("ysuur223@nate.com","1234","여성","감독","남","19930404");
insert into member(email,pw,name,mtype,sex,birth) values("y2141@nate.com","4324","봉수","배우","남","19920404");
insert into member(email,pw,name,mtype,sex,birth) values("fsfd321@nate.com","4","기철","배우","남","19910404");
insert into member(email,pw,name,mtype,sex,birth) values("fsddf12321@nate.com","44","길동","감독","남","19900404");
insert into member(email,pw,name,mtype,sex,birth) values("ydfddfdgd1@nate.com","4334","동건","배우","남","19960404");

alter table profile modify email varchar(45);

delete from member;

alter table profile modify profileno int not null auto_increment;

alter table career modify email varchar(45);

insert into career(email,type,title,roll,date) values('ysung1223@nate.com', '영화', '킬러의 보디가드', '감독','20170830');
insert into career(email,type,title,roll,date) values('ysung12321@nate.com', '영화', '잭 더 자이언트 킬러', '감독','20130228');
insert into career(email,type,title,roll,date) values('ysung1223@nde.com', '영화', '킬러들의 수다', '감독','20011012');
insert into career(email,type,title,roll,date) values('fsddf12321@nate.com', '영화', '킬러들의 도시', '감독','20090305');
insert into career(email,type,title,roll,date) values('ysuur223@nate.com', '영화', '레이디킬러', '감독','20040604');

insert into career(email,type,title,roll,date) values('ysung1@nate.com', '영화', '레이디킬러', '여형사역','20170802');
insert into career(email,type,title,roll,date) values('ysud1@nate.com', '영화', '레이디킬러', '남동생역','20160414');
insert into career(email,type,title,roll,date) values('ykhd1@nate.com', '영화', '레이디킬러', '경찰관역','20080215');
insert into career(email,type,title,roll,date) values('ykhd1@nate.com', '영화', '집으로', '버스기사역','20101124');
insert into career(email,type,title,roll,date) values('ykhd1@nate.com', '연극', '김종욱 찾기', '송혁진역','20130604');
insert into career(email,type,title,roll,date) values('ykhd1@nate.com', '연극', '운수좋은 날', '김첨지역','20030404');
insert into career(email,type,title,roll,date) values('ykhd1@nate.com', 'CF', 'SK브로드밴드', '남고생역','20141019');
insert into career(email,type,title,roll,date) values('ykhd1@nate.com', 'CF', '비타500', '대학생역','20110106');



select * from career;

select * from career where email = 'ykhd1@nate.com';
------------------------profile 테이블 사용x--------------------------------
CREATE TABLE profile (
	profileno int not null primary key,
	email varchar(45) not null,
	image varchar(100),
	birth varchar(15),
	height int,
	weight int,
	hobby varchar(15),
	phone varchar(20),
	foreign key (email) references member (email)
);
------------------------------------------------------------------------

select * from career where email IN (select email from member);

select * from career where email IN (select email from member where roll='감독');

select * from member where name like '%기%';

select * from member where name;

select * from member where mtype='감독';

select * from career where email in (select email from member where name like '%여%');


select * from career where title like '%킬러%' and roll='감독';


select * from member where email in (select distinct email from career where title like '%킬러%' and roll='감독');


select distinct email from career where title like '%킬러%';


select * from member where 

select * from member where email in (select distinct email from career where title like '%킬러%' and roll='감독')";



