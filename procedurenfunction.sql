CREATE TABLE student1 (
id NUMBER,
name VARCHAR2(30),
m1 NUMBER,
m2 NUMBER,
m3 NUMBER,
total NUMBER,
grade VARCHAR2(2)
);
INSERT INTO student1 (id, name, m1, m2, m3) VALUES (1, 'Akhil',
25, 18, 30);
INSERT INTO student1 (id, name, m1, m2, m3) VALUES (2, 'Rahul',
30, 12, 28);
INSERT INTO student1 (id, name, m1, m2, m3) VALUES (3, 'Sneha',
25, 22, 12);

CREATE OR REPLACE FUNCTION f1(t int)
RETURN varchar AS
grade varchar(40);
begin
    IF(t>=90) THEN
    grade:='A';
    ELSIF(t>=80)THEN
    grade:='B';
    ELSIF(t>=70)THEN
    grade:='C';
    ELSE
    grade:='FAIL';
    END IF;
return grade;
end;
/

CREATE OR REPLACE PROCEDURE p1(pid IN int) AS
tot int;
g varchar(40);
begin
    tot:=m1+m2+m3;
    g:=f1(tot);
    UPDATE student1
    set total=tot, grade=g
    where id=pid;
    

end;
/
BEGIN
    p1(1);
end;
/
select * from student1