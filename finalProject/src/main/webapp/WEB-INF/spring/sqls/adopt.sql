DROP SEQUENCE ANO;


DROP TABLE ADOPT;



CREATE SEQUENCE ANO NOCACHE;

CREATE TABLE ADOPT(

    ANO NUMBER PRIMARY KEY,
    AMNO NUMBER NOT NULL,
    AAREA VARCHAR2(1000) NOT NULL,
    ATYPE VARCHAR2(1000) NOT NULL,
    ATITLE VARCHAR2(1000) NOT NULL,
    ADATE DATE NOT NULL,
    ACOUNT NUMBER DEFAULT 0,
    ANMNAME VARCHAR2(1000) NOT NULL,
    ANMAGE NUMBER NOT NULL,
    ANMBREED VARCHAR2(1000) NOT NULL,
    ANMGENDER VARCHAR2(10) NOT NULL,
    ANMVCNYN VARCHAR2(2) NOT NULL,
    ANMNTRYN VARCHAR2(2) NOT NULL,
    APHONE VARCHAR2(1000) NULL,
    AMEMO VARCHAR2(1000) NULL,
    AIMG VARCHAR2(2000) NOT NULL, 
    ATHUMBIMG VARCHAR2(2000) NOT NULL,
    

 
 FOREIGN KEY(AMNO) REFERENCES MEMBER(MNO),    
 CONSTRAINT ANMGENDERCHK CHECK(ANMGENDER IN('수컷','암컷')),
 CONSTRAINT ANMVCNYNCHK CHECK(ANMVCNYN IN('Y','N')),
 CONSTRAINT ANMNTRYNCHK CHECK(ANMNTRYN IN('Y','N'))
 
 

 

);

SELECT * FROM ADOPT;

commit;