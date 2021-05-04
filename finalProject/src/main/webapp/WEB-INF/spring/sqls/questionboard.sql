DROP SEQUENCE QNOSEQ;
DROP SEQUENCE QGROUPNOSEQ;
DROP TABLE QUESTIONBOARD;

CREATE SEQUENCE QNOSEQ NOCACHE;
CREATE SEQUENCE QGROUPNOSEQ NOCACHE;

CREATE TABLE QUESTIONBOARD(
    QNO NUMBER PRIMARY KEY, 
    QGROUPNO NUMBER NOT NULL, 
    QGROUPSQ NUMBER NOT NULL, 
    QTITLETAB NUMBER NOT NULL, 
    QCTGY VARCHAR2(2000) NOT NULL,
    QTITLE VARCHAR2(2000) NOT NULL, 
    QCONTENT VARCHAR2(4000) NOT NULL, 
    MNO NUMBER NOT NULL, 
    QDATE DATE NOT NULL,
    CONSTRAINT FK_MNO FOREIGN KEY(MNO) REFERENCES MEMBER(MNO), 
    CONSTRAINT QCTGY_CHK CHECK(QCTGY IN('입양공고','입양일기','굿즈','사이트이용'))
);

SELECT *
FROM QUESTIONBOARD;

-- 더미데이터 INSERT 
INSERT INTO QUESTIONBOARD
VALUES (QNOSEQ.NEXTVAL, 1, 1, 0, '입양일기', '입양일기 관련해서 문의 있습니다!', '문의 글 내용입니다~', 1, SYSDATE);
INSERT INTO QUESTIONBOARD
VALUES (QNOSEQ.NEXTVAL, 1, 2, 1, '입양일기', '답변입니다', '답변 글 내용입니다~', 1, SYSDATE);

INSERT INTO QUESTIONBOARD
VALUES (QNOSEQ.NEXTVAL, 2, 1, 0, '굿즈', '굿즈 관련해서 문의 있습니다!', '굿즈문의 글 내용입니다~', 1, SYSDATE);
INSERT INTO QUESTIONBOARD
VALUES (QNOSEQ.NEXTVAL, 2, 2, 1, '굿즈', '답변입니다', '답변 글 내용입니다~', 1, SYSDATE);



COMMIT
