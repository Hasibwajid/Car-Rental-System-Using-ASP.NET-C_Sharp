  CREATE TABLE CARS
   (	
    CAR_ID NUMBER PRIMARY KEY, 
    CAR_MODEL VARCHAR2(50), 
	CAR_BRAND VARCHAR2(50), 
	CAR_COLOR VARCHAR2(50), 
	AVAILABILITY CHAR(1), 
	PLATE_NO VARCHAR2(50), 
	
    CATEGORY_ID NUMBER,
    ADDRESS_ID NUMBER,
    DRIVER_LICENSE_NO NUMBER,
    
    FOREIGN KEY(DRIVER_LICENSE_NO) REFERENCES DRIVERS(DRIVER_LICENSE_NO),
    FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID)  ,
    FOREIGN KEY(ADDRESS_ID) REFERENCES ADDRESS(ADDRESS_ID)
    )



 CREATE TABLE CATEGORY(
    CATEGORY_ID NUMBER PRIMARY KEY,
    CATEGORY_NAME VARCHAR(20),
    CATEGORY_STOCK NUMBER
    )


  CREATE TABLE ADMINS(
     ADMIN_ID NUMBER PRIMARY KEY,
     FIRST_NAME VARCHAR(30),
     LAST_NAME VARCHAR(30),
     GENDER VARCHAR(20),
     AGE NUMBER,
     PHONE VARCHAR(20),
     EMAIL VARCHAR(20),
     PASSWORD VARCHAR(30)
    )



 CREATE TABLE DRIVERS(
    DRIVER_LICENSE_NO NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR(30),
    LAST_NAME VARCHAR(30),
    COMMISSION  NUMBER,
    PHONE_NO VARCHAR2(20 ),
    AVAILABILITY CHAR(1),
    
    ADDRESS_ID NUMBER,
    FOREIGN KEY (ADDRESS_ID ) REFERENCES ADDRESS(ADDRESS_ID)
    
    )


  CREATE TABLE CUSTOMERS
   (	
     CUSTOMER_ID NUMBER PRIMARY KEY,
     FIRST_NAME VARCHAR(30),
     LAST_NAME VARCHAR(30),
     GENDER VARCHAR(20),
     AGE NUMBER,
     PHONE VARCHAR(20),
     EMAIL VARCHAR(20),
     PASSWORD VARCHAR(30),
     LICENSE_NO VARCHAR2(50), 
     
    
     ADDRESS_ID NUMBER,
     FOREIGN KEY (ADDRESS_ID) REFERENCES ADDRESS(ADDRESS_ID)
    )

    CREATE TABLE BOOKING 
    (	
    BOOKING_ID NUMBER PRIMARY KEY, 
    IS_WITH_DRIVER CHAR(1),
    BOOK_DATE DATE,  
	RETURN_DATE DATE, 
    
    FROM_LOCATION NUMBER,
    TO_LOCATION NUMBER,
	CAR_ID NUMBER, 
	CUSTOMER_ID NUMBER,
    DRIVER_LICENSE_NO NUMBER,
    
    FOREIGN KEY (FROM_LOCATION) REFERENCES ADDRESS(ADDRESS_ID),
    FOREIGN KEY (TO_LOCATION) REFERENCES ADDRESS(ADDRESS_ID),
    FOREIGN KEY (CAR_ID) REFERENCES CARS(CAR_ID),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
    FOREIGN KEY (DRIVER_LICENSE_NO) REFERENCES DRIVERS(DRIVER_LICENSE_NO)
    )

     
     CREATE TABLE BILLS(
     BILL_ID NUMBER PRIMARY KEY,
     BILL_STATUS VARCHAR(20),
     PAY_DATE DATE,
     TAX_AMOUNT NUMBER,
     LATE_FEE NUMBER,
     TOTAL_AMOUNT NUMBER,
     
     
     ADMIN_ID NUMBER,
     BOOKING_ID NUMBER,
     CUSTOMER_ID NUMBER,
     FOREIGN KEY(BOOKING_ID) REFERENCES BOOKING(BOOKING_ID),
     FOREIGN KEY (ADMIN_ID) REFERENCES ADMINS(ADMIN_ID),
     FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
     )


 CREATE TABLE ADDRESS
   (	
    ADDRESS_ID NUMBER PRIMARY KEY, 
	STREET_ADDRESS VARCHAR2(40 ) , 
	POSTAL_CODE VARCHAR2(12 ) , 
	CITY VARCHAR2(30 ) , 
	STATE_PROVINCE VARCHAR2(25 ) 
    )


