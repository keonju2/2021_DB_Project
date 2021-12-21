create table jobpolicy_recog as select id, 청년취업성공패키지인지여부,구직활동지원금인지여부,내일배움카드인지여부 from survey;
alter table jobpolicy_recog add 정책유형 char(256) default '취업지원';
alter table jobpolicy_recog add constraint primary key (ID);

create table policy_type as select distinct 정책유형 from policy;
select * from policy_type;
delete from policy_type where 정책유형 is null;
alter table policy_type add constraint pk_policy_type primary key (정책유형);
alter table jobpolicy_recog add constraint fk_job_type foreign key (정책유형) references policy_type(정책유형);

create table startpolicy_recog as select id, 창업성공패키지인지여부, 청년전용창업자금인지여부 from survey;
alter table startpolicy_recog add 정책유형 char(256) default '창업지원';
alter table startpolicy_recog add constraint pk_start_recog primary key (ID);
alter table startpolicy_recog add constraint fk_start_type foreign key (정책유형) references policy_type(정책유형);

create table housepolicy_recog as select id, 행복주택인지여부, 청년매입전세임대인지여부, 대학생기숙사인지여부 from survey;
alter table housepolicy_recog add 정책유형 char(256) default '주거금융';
alter table housepolicy_recog add constraint pk_house_recog primary key (ID);
alter table housepolicy_recog add constraint fk_house_type foreign key (정책유형) references policy_type(정책유형);

create table housepolicy_good as select id, 행복주택만족도, 청년매입전세임대만족도, 대학생기숙사만족도 from survey;
alter table housepolicy_good add 정책유형 char(256) default '주거금융';
alter table housepolicy_good add constraint pk_house_good primary key (ID);
alter table housepolicy_good add constraint fk_house_good foreign key (정책유형) references policy_type(정책유형);

create table jobpolicy_good as select id, 청년취업성공패키지만족도,구직활동지원금만족도,내일배움카드만족도 from survey;
alter table jobpolicy_good add 정책유형 char(256) default '취업지원';
alter table jobpolicy_good add constraint pk_job_good primary key (ID);
alter table jobpolicy_good add constraint fk_job_good foreign key (정책유형) references policy_type(정책유형);


create table startpolicy_good as select id, 창업성공패키지만족도, 청년전용창업자금만족도 from survey;
alter table startpolicy_good add 정책유형 char(256) default '창업지원';
alter table startpolicy_good add constraint pk_start_good primary key (ID);
alter table startpolicy_good add constraint fk_start_good foreign key (정책유형) references policy_type(정책유형);

create table housepolicy_use as select id, 행복주택수혜여부, 청년매입전세임대수혜여부, 대학생기숙사수혜여부 from survey;
alter table housepolicy_use add 정책유형 char(256) default '주거금융';
alter table housepolicy_use add constraint pk_house_use primary key (ID);
alter table housepolicy_use add constraint fk_house_use foreign key (정책유형) references policy_type(정책유형);

create table jobpolicy_use as select id, 청년취업성공패키지수혜여부,구직활동지원금수혜여부,내일배움카드수혜여부 from survey;
alter table jobpolicy_use add 정책유형 char(256) default '취업지원';
alter table jobpolicy_use add constraint pk_job_use primary key (ID);
alter table jobpolicy_use add constraint fk_job_use foreign key (정책유형) references policy_type(정책유형);


create table startpolicy_use as select id, 창업성공패키지수혜여부, 청년전용창업자금수혜여부 from survey;
alter table startpolicy_use add 정책유형 char(256) default '창업지원';
alter table startpolicy_use add constraint pk_start_use primary key (ID);
alter table startpolicy_use add constraint fk_start_use foreign key (정책유형) references policy_type(정책유형);

alter table policy add constraint fk_policy foreign key (정책유형) references policy_type(정책유형);