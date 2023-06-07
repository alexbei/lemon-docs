/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     2023/6/8 4:12:15                             */
/*==============================================================*/


/*==============================================================*/
/* Table: detail_category                                       */
/*==============================================================*/
create table detail_category (
   id                   BIGSERIAL            not null,
   detail_type          INT2                 not null,
   icon                 VARCHAR(255)         not null,
   icon_name            VARCHAR(255)         not null,
   sort                 INT8                 not null,
   create_time          TIMESTAMP WITH TIME ZONE not null,
   update_time          TIMESTAMP WITH TIME ZONE not null,
   constraint PK_DETAIL_CATEGORY primary key (id),
   constraint AK_KEY_2_DETAIL_C unique (detail_type, sort)
);

comment on table detail_category is
'������ϸ�����';

comment on column detail_category.id is
'ID';

comment on column detail_category.detail_type is
'��ϸ���� {"����":1,"֧��":2}';

comment on column detail_category.icon is
'Icon ͼ��';

comment on column detail_category.icon_name is
'Icon ����';

comment on column detail_category.sort is
'�������';

comment on column detail_category.create_time is
'����ʱ�� ( UTC )';

comment on column detail_category.update_time is
'����ʱ�� ( UTC )';

/*==============================================================*/
/* Table: ledger_detail                                         */
/*==============================================================*/
create table ledger_detail (
   id                   BIGSERIAL            not null,
   detail_category_id   INT8                 not null,
   detail_type          INT2                 not null,
   amount               NUMERIC(72,18)       not null,
   remark               VARCHAR(255)         null,
   create_year          INT2                 not null,
   create_month         INT2                 not null,
   create_day           INT2                 not null,
   create_week_number   INT2                 not null,
   create_week_day      INT2                 not null,
   date_number          INT4                 not null,
   create_time          TIMESTAMP WITH TIME ZONE not null,
   update_time          TIMESTAMP WITH TIME ZONE not null,
   constraint PK_LEDGER_DETAIL primary key (id),
   constraint AK_KEY_2_LEDGER_D unique (create_week_day, date_number)
);

comment on table ledger_detail is
'������ϸ��';

comment on column ledger_detail.id is
'ID';

comment on column ledger_detail.detail_category_id is
'������ϸ����� ID';

comment on column ledger_detail.detail_type is
'��ϸ���� ( detail_category ��������ֶ� ) {"����":1,"֧��":2}';

comment on column ledger_detail.amount is
'���';

comment on column ledger_detail.remark is
'��ע';

comment on column ledger_detail.create_year is
'����ʱ�� ( �����ֶ�) [��]';

comment on column ledger_detail.create_month is
'����ʱ�� ( �����ֶ�) [��]';

comment on column ledger_detail.create_day is
'����ʱ�� ( �����ֶ�) [��]';

comment on column ledger_detail.create_week_number is
'����ʱ�� ( �����ֶ�) [һ���е����� ( 1-53 ) ]';

comment on column ledger_detail.create_week_day is
'����ʱ�� ( �����ֶ�) [���ڼ� ( 1-7 ) ]';

comment on column ledger_detail.date_number is
'����ʱ�� ( �����ֶ�) [������]';

comment on column ledger_detail.create_time is
'����ʱ�� ( UTC )';

comment on column ledger_detail.update_time is
'����ʱ�� ( UTC )';

