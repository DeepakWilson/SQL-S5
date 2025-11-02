set serveroutput on;
show serveroutput;
declare 
 num int;
 endvalue int;
 i int;
 begin
  endvalue:=&endvalue;
  num:=0;
  i:=0;
  dbms_output.put_line('The first '||endvalue||'even numbers are');
  while(i<endvalue)
  LOOP
  dbms_output.put_line(num);
  num:=num+2;
  i:=i+1;
  END LOOP;
  END;
/
 
