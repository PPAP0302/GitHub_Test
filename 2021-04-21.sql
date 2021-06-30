select * from v$version;    -- 주석 처리, 실행 가능한 sql문 뒤에 작성해도 된다
                            -- 실행은 ctrl + Enter
select sysdate from dual;   -- 현재 시스템의 날짜와 시간

select * from tab;          -- 현재 계정에서 생성된 테이블의 목록

desc human                  
-- 지정한 테이블의 컬럼구조를 확인

/*
    범위 주석
    
    DDL, Data Definition Language, 데이터의 형식을 정의하는 언어 (create, alter, drop)
    DML, Data Manipulation Language, 데이터를 조작하는데 사용하는 언어 (insert, select, update, delete)
    DCL, Data Control Language, 데이터를 제어하는데 사용하는 언어 (grant(권한부여), revoke(권한빼기)...)
*/
create table phonebook (    -- phonebook 테이블 생성
    --컬럼이름 자료형(크기)
    name varchar2(20),
    pnum varchar2(20)
);
-- phonebook 테이블 구조 확인
desc phonebook;             

drop table phonebook;       -- phonebook 테이블 삭제

alter table phonebook add (favorite number);            -- 컬럼을 추가할 때
alter table phonebook modify (favorite varchar2(10));   -- 컬럼을 수정할 때
alter table phonebook drop column favorite;             -- 컬럼을 삭제할 때
alter table phonebook rename column name to username;   -- 컬럼 이름을 변경할 때

/*
    테이블이름 : member
    
    id, pw, name 모두 문자열이며, age는 숫자
    id는 20글자, pw는 500글자, name은 50글자 (byte)
*/
create table member (
    id varchar2(20),
    pw varchar2(500),
    name varchar2(50),
    age number
);

desc member;
drop table member;

insert  -- dml
    into member
        (id, pw, name, age)
    values
        ('Seulgi', 'sg', '강슬기', 28);

select id, pw, name, age from member;   -- 지정한 테이블에서 명시한 컬럼값을 모두 불러오기
select * from member;                   -- 지정한 테이블의 모든 컬럼값을 불러오기
select id, name from member;

select * from member
    where id='Seulgi';      -- id가 제시한 값과 일치하는 줄(row, record)만 불러오기

select * from member   
    where id like '%Seul%';  -- id에 Seul 이라는 단어를 포함하는 경우 불러오기

select * from member
    where age < 30;         -- age의 값이 30보다 작은 줄만 불러오기

commit;

desc member;





