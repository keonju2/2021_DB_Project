create table jobpolicy_recog as select id, û�����������Ű����������,����Ȱ����������������,���Ϲ��ī���������� from survey;
alter table jobpolicy_recog add ��å���� char(256) default '�������';
alter table jobpolicy_recog add constraint primary key (ID);

create table policy_type as select distinct ��å���� from policy;
select * from policy_type;
delete from policy_type where ��å���� is null;
alter table policy_type add constraint pk_policy_type primary key (��å����);
alter table jobpolicy_recog add constraint fk_job_type foreign key (��å����) references policy_type(��å����);

create table startpolicy_recog as select id, â��������Ű����������, û������â���ڱ��������� from survey;
alter table startpolicy_recog add ��å���� char(256) default 'â������';
alter table startpolicy_recog add constraint pk_start_recog primary key (ID);
alter table startpolicy_recog add constraint fk_start_type foreign key (��å����) references policy_type(��å����);

create table housepolicy_recog as select id, �ູ������������, û����������Ӵ���������, ���л�������������� from survey;
alter table housepolicy_recog add ��å���� char(256) default '�ְű���';
alter table housepolicy_recog add constraint pk_house_recog primary key (ID);
alter table housepolicy_recog add constraint fk_house_type foreign key (��å����) references policy_type(��å����);

create table housepolicy_good as select id, �ູ���ø�����, û����������Ӵ븸����, ���л�����縸���� from survey;
alter table housepolicy_good add ��å���� char(256) default '�ְű���';
alter table housepolicy_good add constraint pk_house_good primary key (ID);
alter table housepolicy_good add constraint fk_house_good foreign key (��å����) references policy_type(��å����);

create table jobpolicy_good as select id, û�����������Ű��������,����Ȱ�������ݸ�����,���Ϲ��ī�常���� from survey;
alter table jobpolicy_good add ��å���� char(256) default '�������';
alter table jobpolicy_good add constraint pk_job_good primary key (ID);
alter table jobpolicy_good add constraint fk_job_good foreign key (��å����) references policy_type(��å����);


create table startpolicy_good as select id, â��������Ű��������, û������â���ڱݸ����� from survey;
alter table startpolicy_good add ��å���� char(256) default 'â������';
alter table startpolicy_good add constraint pk_start_good primary key (ID);
alter table startpolicy_good add constraint fk_start_good foreign key (��å����) references policy_type(��å����);

create table housepolicy_use as select id, �ູ���ü�������, û����������Ӵ��������, ���л������������� from survey;
alter table housepolicy_use add ��å���� char(256) default '�ְű���';
alter table housepolicy_use add constraint pk_house_use primary key (ID);
alter table housepolicy_use add constraint fk_house_use foreign key (��å����) references policy_type(��å����);

create table jobpolicy_use as select id, û�����������Ű����������,����Ȱ�������ݼ�������,���Ϲ��ī��������� from survey;
alter table jobpolicy_use add ��å���� char(256) default '�������';
alter table jobpolicy_use add constraint pk_job_use primary key (ID);
alter table jobpolicy_use add constraint fk_job_use foreign key (��å����) references policy_type(��å����);


create table startpolicy_use as select id, â��������Ű����������, û������â���ڱݼ������� from survey;
alter table startpolicy_use add ��å���� char(256) default 'â������';
alter table startpolicy_use add constraint pk_start_use primary key (ID);
alter table startpolicy_use add constraint fk_start_use foreign key (��å����) references policy_type(��å����);

alter table policy add constraint fk_policy foreign key (��å����) references policy_type(��å����);