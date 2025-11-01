SET SERVEROUTPUT ON;
SHOW SERVEROUTPUT;
DECLARE
    fact int;
    i int;
    num int;
BEGIN
    fact:= 1;
    num:= &num;
    i:=num;
    while(i>0)
    LOOP
    fact:=fact*i;
    i:=i-1;
    END LOOP;
    dbms_output.put_line('The factorial is '||fact);
END;
/