SET SERVEROUTPUT ON;
SHOW SERVEROUTPUT;
DECLARE
    str varchar(100);
    revstr varchar(100);
    len int;
    i int;
BEGIN
    str:='&str';
    revstr:='';
    len:=LENGTH(str);
    
    i:=len;
    while(i>=1)LOOP
    revstr:= revstr||SUBSTR(str,i,1);
    i:=i-1;
    END LOOP;
    if LOWER(str)=LOWER(revstr)THEN
    dbms_output.put_line('is a palindrome');
    else 
    dbms_output.put_line('is not a palindrome');
    end if;
END;
/