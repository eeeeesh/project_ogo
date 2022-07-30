INSERT INTO login 
(userid,USERPASSWD,USERNAME,GENDER,BIRTH,PHONE,ADDRESS,EMAIL,PROFILEPHOTO,
CERTIFICATEPHOTO,CERTIFICATEDATA,HOBBY)
VALUES ('user01','1234','고구마','여',TO_DATE('00/01/01','yy/mm/dd'),'010-1111-1111','서울',
'aaa@naver.com','a','a','a','dance');

INSERT INTO login 
(userid,USERPASSWD,USERNAME,GENDER,BIRTH,PHONE,ADDRESS,EMAIL,PROFILEPHOTO,
CERTIFICATEPHOTO,CERTIFICATEDATA,HOBBY)
VALUES ('user02','1234','김감자','남',TO_DATE('00/02/02','yy/mm/dd'),'010-222-2222','수원',
'bbb@naver.com','b','b','b','cooking');

INSERT INTO login 
(userid,USERPASSWD,USERNAME,GENDER,BIRTH,PHONE,ADDRESS,EMAIL,PROFILEPHOTO,
CERTIFICATEPHOTO,CERTIFICATEDATA,HOBBY)
VALUES ('user04','1234','박가지','남',TO_DATE('90/04/04','yy/mm/dd'),'010-4444-4444','속초',
'ddd@naver.com','a','a','a','video');

insert into class values
('a001','토익 한달완성','user01','language',100000,'화/목','강남');

insert into class values
('a002','마카롱 마스터','user02','cooking',70000,'수/금','종로');

-----
insert into content(classid, con_class, con_tutor, con_attention) 
values ('a001',
'한달만에 토익 900점 달성! 5천명의 수강생을 만족시킨 강의. 단기간에 고득점을 달성하는 최고의 강의.
한달만에 토익 900점 달성! 5천명의 수강생을 만족시킨 강의. 단기간에 고득점을 달성하는 최고의 강의.
한달만에 토익 900점 달성! 5천명의 수강생을 만족시킨 강의. 단기간에 고득점을 달성하는 최고의 강의.
한달만에 토익 900점 달성! 5천명의 수강생을 만족시킨 강의. 단기간에 고득점을 달성하는 최고의 강의.
[1회차 커리큘럼]가나다라마바사 [2회차 커리큘럼]아자차카타파하 [3회차 커리큘럼]가나다라마바사',
'최고의 토익 전문 강사. 현) s유학원 출강. 현) 대기업, 중소기업 대상 토익스피킹, 오픽, 일반 영어회화 출강',
'이 클래스는 1회 기준 1시간 30분씩 진행되는 수업입니다. 무단 지각, 결석은 금지! 교재는 미리 준비해주세요',
'서울 강남구 어쩌구 빌딩 6층에서 대면수업이 진행되며 비대면 ZOOM 화상 수업으로도 함께 수강할 수 있습니다.');
