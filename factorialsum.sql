set serveroutput on;
show serveroutput;
declare 
    num int;
    fact int;
    j int;
    sumof int;
    i int;
begin
    num:=&num;
    sumof:=0;
    i:=num;
    while(i>0) LOOP
    fact:=1;
    j:=1;
    while(j<=i) LOOP
    fact:=fact*j;
    j:=j+1;
    END LOOP;
    dbms_output.put_line('the factorial of'|| i || 'is '||fact);
    sumof:= sumof+fact;
    i:=i-1;
END LOOP;
dbms_output.put_line('The sum is '||sumof);
END;
/
    
