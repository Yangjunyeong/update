-- users table 생성
CREATE TABLE users (
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country TEXT NOT NULL,
    phone TEXT NOT NULL,
    balance INTEGER NOT NULL
);

-- 모든 행의 개수를 찾기
SELECT COUNT(*) FROM users;

--  모든 유저의 평균 잔액 조회
SELECT AVG(balance) FROM users;

-- 전라북도 유저의 평균 잔액
SELECT DISTINCT country, avg(balance) FROM users
WHERE country='전라북도';

-- 지역별 평균 잔액을 조회
SELECT country, avg(balance) FROM users
GROUP BY country ORDER BY avg(balance);

-- 나이가 30살 이상인 사람들의 평균 나이를 구하기
SELECT avg(age) FROM users
WHERE age >= 30;

-- 각 지역별로 몇 명씩 사는 지 조회
SELECT country, count(*) FROM users GROUP BY country;

-- 각 성씨가 몇 명씩 있는 지 조회하기
SELECT last_name, count(*) AS number_of_name FROM users GROUP BY last_name;

-- 인원이 가장 많은 성 씨 순으로 조회하기
SELECT last_name, count(*) AS number_of_name FROM users GROUP BY last_name ORDER BY count(*) DESC;

-- 각 지역별 평균 나이 조회하기
SELECT country, avg(age) FROM users
GROUP BY country;

-- insert, update, delete
CREATE TABLE classmates2 (
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    address TEXT NOT NULL
);

ALTER TABLE classmates2 RENAME TO classmate;

-- 단일행 삽입하기
INSERT INTO classmate(name, age, address)
VALUES('홍길동',23,'서울');

-- 여러행 삽입하기
INSERT INTO classmate
VALUES
('김철수',30,'경기'),
('이영미',31,'강원'),
('박진성',26,'전라'),
('최지수',12,'충청'),
('정요한',31,'경상');

UPDATE classmates2
SET name='김철수한무두루미',
    address='제주도'
WHERE rowid =2;

DELETE FROM classmates2 WHERE rowid = 5;

SELECT rowid, * FROM classmates2;

DELETE FROM classmates2 WHERE name like '%영%';

DELETE FROM classmates2;