USE govement;
-- DB 테스트
CREATE TABLE test(NAME VARCHAR(50), POINT INT);
SHOW TABLES;

INSERT INTO test VALUES("김기태", 100);
INSERT INTO test VALUES("안효준", 90);

SELECT * FROM test;
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