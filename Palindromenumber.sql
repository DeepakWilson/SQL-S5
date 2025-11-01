SET SERVEROUTPUT ON;
SHOW SERVEROUTPUT;
DECLARE
num int;
temp int;
rev int;
rem int;
BEGIN
 num:=&num;
 rev:=0;
 rem:=0;
 temp:=num;
 while(temp>0)
 LOOP
 rem:= MOD(temp,10);
 rev:= rev*10+rem;
 temp:=FLOOR(temp/10);
 END LOOP;
 if(rev=num) THEN
 dbms_output.put_line('Is a palindrome');
 else
 dbms_output.put_line('Is not a palindrome');
 end if;
END;
/
 