create or replace 
Procedure
NEW_Customer (
Customer_ID OUT NUMBER,
First_Name IN   VARCHAR2,
Last_Name IN    VARCHAR2,
Credit     IN OUT NUMBER
) IS

BEGIN
  SELECT SEQ_CUSTOMER_ID.nextval INTO CUSTOMER_ID FROM DUAL;
  
  IF(CREDIT IS NULL) THEN
    SELECT 100 INTO CREDIT FROM DUAL;
  END IF;
  
  INSERT INTO CUSTOMER VALUES(CUSTOMER_ID,First_Name,Last_name,Credit);
  
END NEW_Customer;
