CREATE table class
(classid VARCHAR2(20) CONSTRAINT class_classid_pk PRIMARY KEY,
classname VARCHAR2(20) CONSTRAINT class_classname_nn not null,
userid VARCHAR2(20) CONSTRAINT class_userid_fk REFERENCES login(userid),
category VARCHAR2(20) CONSTRAINT class_category_nn not null,
price NUMBER CONSTRAINT class_price_nn not null,
schedule VARCHAR2(20) CONSTRAINT class_schedule_nn not null,
place VARCHAR2(20) CONSTRAINT class_place_nn not null
);

create table content
(classid VARCHAR2(20) CONSTRAINT content_classid_fk REFERENCES class(classid),
con_class CLOB,
con_tutor CLOB,
con_attention CLOB,
con_notice CLOB);