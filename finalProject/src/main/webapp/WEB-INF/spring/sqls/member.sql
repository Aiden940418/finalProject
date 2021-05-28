drop table MEMBER;
DROP SEQUENCE MNO;


--넘버테이블 안지워지면 실행 
DROP TABLE MEMBER CASCADE CONSTRAINTS;

SELECT * FROM MEMBER;


CREATE SEQUENCE MNO NOCACHE;
CREATE TABLE MEMBER (

    MNO NUMBER PRIMARY KEY,
    MROLE VARCHAR2(100) NOT NULL,
    MJOINYN VARCHAR2(2) NOT NULL,
    MID VARCHAR2(1000) UNIQUE NOT NULL,
    MPW VARCHAR2(1000) NOT NULL,
    MADDR1 VARCHAR2(1000) NOT NULL,
    MADDR2 VARCHAR2(1000) NOT NULL,
    MADDR3 VARCHAR2(1000) NOT NULL,
    MNAME VARCHAR2(1000) NOT NULL,
    MNICK VARCHAR2(1000) NOT NULL,
    MPHONE VARCHAR2(1000) NOT NULL,
    SBISNUM VARCHAR2(1000) NULL,
    SSELLNUM VARCHAR2(1000) NULL,
    
    
    CONSTRAINT MJOINYN_CHK CHECK(MJOINYN IN('Y','N'))
    

);



--관리자 더미데이터 
INSERT INTO MEMBER VALUES(
MNO.NEXTVAL,3,'Y','admin','1234','1234','서울시','아파트','관리자','관리자','01088349078','23241213','213213213'
);

INSERT INTO MEMBER VALUES(
MNO.NEXTVAL,1,'Y','user1','1234','1234','경기도','아파트','이순신','순신무신','01065468766','55553211','213255213'
);
INSERT INTO MEMBER VALUES(
MNO.NEXTVAL,1,'Y','user2','1234','1234','경상북도','아파트','홍길동','호이','01012314124','55534343211','213255213'
);



commit



SELECT * FROM MEMBER
	  	WHERE MNO = 3;
