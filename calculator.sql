SHOW SERVEROUTPUT;
SET SERVEROUTPUT ON;
DECLARE
a int;
b int;
sumof int;
div int;
diff int;
mul int;
operatorof int;
BEGIN
    a:=&a;
    b:=&b;
    operatorof:= &operatorof;
    sumof:= a+b;
    diff:= a-b;
    mul:= a*b;
    if(b>0) then
    div:= a/b;
    end if;
    case operatorof
    WHEN 1 THEN
    dbms_output.put_line(sumof);
    WHEN 2 THEN
    dbms_output.put_line(diff);
    WHEN 3 THEN
    dbms_output.put_line(mul);
    WHEN 4 THEN 
    dbms_output.put_line(div);
    ELSE
    dbms_output.put_line('enter valid option');
    end case;
end;
/
