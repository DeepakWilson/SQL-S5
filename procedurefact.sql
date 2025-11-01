SET SERVEROUTPUT ON;
SHOW SERVEROUTPUT;

/*CREATE OR REPLACE PROCEDURE factorial(num IN int, fact out int)
AS
   i int;
  begin
    fact:=1;
   i:=num;
    while(i>0)LOOP
    fact:=fact*i;
 i:=i-1;
    END LOOP;
   end;
*/
DECLARE
 n int;
 result int;
begin
    n:= &n;
    factorial(n,result);
    dbms_output.put_line(result);
end;
/
    
 
 