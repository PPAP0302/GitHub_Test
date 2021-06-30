select * from v$version;    -- �ּ� ó��, ���� ������ sql�� �ڿ� �ۼ��ص� �ȴ�
                            -- ������ ctrl + Enter
select sysdate from dual;   -- ���� �ý����� ��¥�� �ð�

select * from tab;          -- ���� �������� ������ ���̺��� ���

desc human                  
-- ������ ���̺��� �÷������� Ȯ��

/*
    ���� �ּ�
    
    DDL, Data Definition Language, �������� ������ �����ϴ� ��� (create, alter, drop)
    DML, Data Manipulation Language, �����͸� �����ϴµ� ����ϴ� ��� (insert, select, update, delete)
    DCL, Data Control Language, �����͸� �����ϴµ� ����ϴ� ��� (grant(���Ѻο�), revoke(���ѻ���)...)
*/
create table phonebook (    -- phonebook ���̺� ����
    --�÷��̸� �ڷ���(ũ��)
    name varchar2(20),
    pnum varchar2(20)
);
-- phonebook ���̺� ���� Ȯ��
desc phonebook;             

drop table phonebook;       -- phonebook ���̺� ����

alter table phonebook add (favorite number);            -- �÷��� �߰��� ��
alter table phonebook modify (favorite varchar2(10));   -- �÷��� ������ ��
alter table phonebook drop column favorite;             -- �÷��� ������ ��
alter table phonebook rename column name to username;   -- �÷� �̸��� ������ ��

/*
    ���̺��̸� : member
    
    id, pw, name ��� ���ڿ��̸�, age�� ����
    id�� 20����, pw�� 500����, name�� 50���� (byte)
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
        ('Seulgi', 'sg', '������', 28);

select id, pw, name, age from member;   -- ������ ���̺��� ����� �÷����� ��� �ҷ�����
select * from member;                   -- ������ ���̺��� ��� �÷����� �ҷ�����
select id, name from member;

select * from member
    where id='Seulgi';      -- id�� ������ ���� ��ġ�ϴ� ��(row, record)�� �ҷ�����

select * from member   
    where id like '%Seul%';  -- id�� Seul �̶�� �ܾ �����ϴ� ��� �ҷ�����

select * from member
    where age < 30;         -- age�� ���� 30���� ���� �ٸ� �ҷ�����

commit;

desc member;





