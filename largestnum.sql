SHOW SERVEROUTPUT;
SET SERVEROUTPUT ON;
DECLARE
a int;
b int;
c int;
BEGIN
    a:=&a;
    b:=&b;
    c:=&c;
    if(a>b AND a>c) THEN
    dbms_output.put_line(a||'is the greater number');
    elsif(b>a AND b>c) THEN
    dbms_output.put_line(b||' is the greatest number');
    else
    dbms_output.put_line(c||' is the greatest number');
    end if;
end;
/