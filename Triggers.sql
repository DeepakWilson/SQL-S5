--TRIGGER QN1
CREATE OR REPLACE TRIGGER tr1 
BEFORE INSERT ON customer_details FOR EACH ROW 
begin
    dbms_output.put_line('NEW INPUT');
end;
/

--TRIGGER QN2
CREATE OR REPLACE TRIGGER trig
AFTER INSERT ON emp_details FOR EACH ROW
WHEN(NEW.salary>2000)
BEGIN
    dbms_output.put_line('Rich rich ');
END;
/

--TRIGGER QN3
CREATE OR REPLACE TRIGGER trig1
AFTER INSERT OR DELETE ON customer_details FOR EACH ROW
BEGIN
    IF INSERTING THEN
    update cust_count 
    set count_row= count_row+1;
    ELSIF DELETING THEN
    update cust_count
    set count_row=count_row-1;
    end if;
END;
/

--TRIGGER QN4
CREATE OR REPLACE TRIGGER trigg
BEFORE INSERT OR UPDATE ON emp_details FOR EACH ROW
BEGIN
    IF deleting then
    insert into new_delete VALUES(:old.empid,:old.empname,:old.salary);
    ELSIF updating then
    insert into new_update VALUES(:new.empid,:new.empname,:new.salary);
END IF;
END;
/
    
