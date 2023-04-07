CREATE TABLE contacts (
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  email TEXT NOT NULL UNIQUE
);
-- 테이블 이름 바꾸기 
ALTER TABLE contacts RENAME TO new_contacts;
-- 컬럼 이름 바꾸기
ALTER TABLE new_contacts RENAME COLUMN name TO last_name;
--새 컬럼 추가 (새 컬럼 추가시 not null 값을 지정하는 경우 디폴트 값을 설정해줘야 함
ALTER TABLE new_contacts ADD COLUMN address TEXT NOT NULL DEFAULT'no address';
--컬럼 삭제
ALTER TABLE new_contacts DROP COLUMN address;
--테이블 삭제
DROP TABLE new_contacts;

CREATE TABLE users(
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
age INTEGER NOT NULL,
country TEXT NOT NULL,
phone TEXT NOT NULL,
balance TEXT NOT NULL
);

DROP TABLE users;

