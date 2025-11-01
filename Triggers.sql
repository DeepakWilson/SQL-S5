/* Create a table customer_details (cust_id (unique), cust_name, address).
Create a table emp_details (empid (unique), empname, salary)
Create a table cust_count (count_row)
1) Create a trigger whenever a new record is inserted in the customer_details table.
2) Create a trigger to display a message when a user enters a value > 20000 in the salary
 field of emp_details table.
3) Create a trigger w.r.t customer_details table. Increment the value of count_row (in
 cust_count table) whenever a new tuple is inserted and decrement the value of
 count_row when a tuple is deleted. Initial value of the count_row is set to 0.
4) Create a trigger to insert the deleted rows from emp_details to another table and
 updated rows to another table. (Create the tables deleted and updated)*/
 


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
    
