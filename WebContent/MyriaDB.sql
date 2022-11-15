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
