SHOW SERVEROUTPUT;
SET SERVEROUTPUT ON;
DECLARE
a int;
b int;
c int;
num int;
i int;
BEGIN
    a:=0;
    b:=1;
    c:=0;
    num:=&num;
    i:= num-2;
    dbms_output.put_line('the fibonaci series is');
    dbms_output.put_line(a);
    dbms_output.put_line(b);
    while(i>0) 
    LOOP
    c:= a+b;
    dbms_output.put_line(c);
    a:= b;
    b:= c;
    i:=i-1;
    END LOOP;
end;
/
