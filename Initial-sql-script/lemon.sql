/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     2023/6/4 11:22:46                            */
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
   year                 INT2                 not null,
   month                INT2                 not null,
   day                  INT2                 not null,
   week                 INT2                 not null,
   date_number          INT4                 not null,
   create_time          TIMESTAMP WITH TIME ZONE not null,
   update_time          TIMESTAMP WITH TIME ZONE not null,
   constraint PK_LEDGER_DETAIL primary key (id)
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

comment on column ledger_detail.year is
'����ʱ�� ( �����ֶ�) [��]';

comment on column ledger_detail.month is
'����ʱ�� ( �����ֶ�) [��]';

comment on column ledger_detail.day is
'����ʱ�� ( �����ֶ�) [��]';

comment on column ledger_detail.week is
'����ʱ�� ( �����ֶ�) [��]';

comment on column ledger_detail.date_number is
'����ʱ�� ( �����ֶ�) [������]';

comment on column ledger_detail.create_time is
'����ʱ�� ( UTC )';

comment on column ledger_detail.update_time is
'����ʱ�� ( UTC )';

