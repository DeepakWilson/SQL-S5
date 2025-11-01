SET SERVEROUTPUT ON;
SHOW SERVEROUTPUT;
DECLARE
    i int;
    num int;
    sumof int;
    endvalue int;
BEGIN
    endvalue:= &endvalue;
    i:=1;
    num:= 1;
    sumof:=0;
    while(i<=endvalue)
    LOOP
    sumof:=sumof+num;
    num:=num+2;
    i:=i+1;
    END LOOP;
    dbms_output.put_line('Sum of first'||endvalue||' odd numbers is'||sumof);
END;
/
