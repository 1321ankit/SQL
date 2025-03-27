set serveroutput on ;


--declare
--     v_count int :=0;
--     
--begin
--    if sql%found then
--         dbms_output.put_line('corsor open' || ' ' || sql%rowcount);
--         end if;
--         
--         update test set id=50;
--         
--         if sql%found then
--            dbms_output.put_line('corsor open2' || ' ' || sql%rowcount);
--        end if;
--        
--end;


declare 
    v_count int := 0;
begin
    if sql%found then
        dbms_output.put_line('cursor open 1' || ' ' || sql%rowcount);
    end if;
    
    insert into test values(40);
    insert into test values(50);
    insert into test values(60);
    insert into test values(70);
    
    if sql%found then
        dbms_output.put_line('cursor open 2' || ' ' || sql%rowcount);
    end if;
end;




