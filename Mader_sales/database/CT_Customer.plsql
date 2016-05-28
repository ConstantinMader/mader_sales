CREATE OR REPLACE Procedure
CT_Customer IS

   v_tabcnt NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_tabcnt FROM ALL_TABLES
  WHERE TABLE_NAME='CUSTOMER' AND
  OWNER = USER;
  
  
  if v_tabcnt = 0 THEN 
  EXECUTE IMMEDIATE 
              'CREATE TABLE CUSTOMER (
              Customer_id integer ,
              first_name varchar(45),
              last_name varchar(45),
              credit decimal(10,2),
              CONSTRAINT Customer_PK primary key (customer_id)
              )';
      COMMIT;
  end if;
END CT_CUSTOMER;