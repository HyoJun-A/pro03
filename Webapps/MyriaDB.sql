USE government;
-- DB 테스트
CREATE TABLE test(NAME VARCHAR(50), POINT INT);
SHOW TABLES;

INSERT INTO test VALUES("김기태", 100);
INSERT INTO test VALUES("안효준", 90);

SELECT * FROM test;

-- Notice
CREATE TABLE notice(
	no INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);
SELECT * FROM notice;
DESC notice;

INSERT INTO notice(title, content) VALUES("테스트 제목1", "테스트 내용1");
INSERT INTO notice(title, content) VALUES("테스트 제목2", "테스트 내용2");
COMMIT;

-- user
CREATE TABLE USER(
	id VARCHAR(30) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	visted INT DEFAULT 1,
	tel VARCHAR(11),
	addr VARCHAR(150),
	email VARCHAR(100),
	birth DATE,
	regdate DATETIME DEFAULT NOW()
);

DROP TABLE USER;
DESC USER;
COMMIT;
DELETE FROM USER;
INSERT INTO USER(id, pw, NAME, email, tel, address1, address2) VALUES("admin", "03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4", "관리자", "admin@google.com", "010-0000-0000", "관리자동");
SELECT * FROM USER;

CREATE TABLE pic(
	private int no;
	private int tourNo;
	private String picName;
	private String pos;
);
		

CREATE TABLE pic(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(150),
	pos INT DEFAULT 1
);
DROP TABLE pic;
DESC pic;
SELECT * FROM pic;
DELETE FROM pic where tourno="G0010";
COMMIT;
CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	cate VARCHAR(20),
	place VARCHAR(100),
	comment1 VARCHAR(1000),
	comment2 VARCHAR(1000)  
);
DESC tour;
SELECT * FROM tour;
select a.no, a.tourno, a.cate, a.place, a.comment1, a.comment2, b.picname, b.pos from tour a inner join pic b on a.tourno=b.tourno where a.place LIKE '%이이%';

ALTER TABLE tour ADD COLUMN addr VARCHAR(200);
DESC tour;
SELECT * FROM tour;
SELECT COMMENT2 FROM tour;
select * from tour where place like CONCAT('%','파주','%');
update tour set addr="법원읍 자운서원로 204" WHERE tourno="A0002";
update tour set addr="헤이리마을길 48-38" WHERE tourno="A0003";
update tour set addr="문산읍 임진각로 148-40" WHERE tourno="A0004";

update tour set addr="경기 파주시 법원읍 동문리 산 5-1" WHERE tourno="B0005";

update tour set addr="경기도 파주시 문산읍 임진각로 177 임진각 광장" WHERE tourno="D0006";

update tour set addr="경기 파주시 탄현면 샘철길 38-12" WHERE tourno="E0008";

update tour set addr="파주시 순못길 122-9" WHERE tourno="F0009";

update tour set addr="회동길 390" WHERE tourno="G0010";


COMMIT;

CREATE TABLE impress(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	cate VARCHAR(20),
	tourno VARCHAR(20),
	id VARCHAR(30),
	content VARCHAR(1000),
	title VARCHAR(150),
	imgSrc VARCHAR(150),
	regdate DATETIME DEFAULT NOW()
);

select * from impress;

CREATE TABLE rpic(
	NO INT PRIMARY key AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(150)
);

COMMIT;