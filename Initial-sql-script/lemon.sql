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
'记账明细分类表';

comment on column detail_category.id is
'ID';

comment on column detail_category.detail_type is
'明细类型 {"收入":1,"支出":2}';

comment on column detail_category.icon is
'Icon 图标';

comment on column detail_category.icon_name is
'Icon 名称';

comment on column detail_category.sort is
'排序序号';

comment on column detail_category.create_time is
'创建时间 ( UTC )';

comment on column detail_category.update_time is
'更新时间 ( UTC )';

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
'记账明细表';

comment on column ledger_detail.id is
'ID';

comment on column ledger_detail.detail_category_id is
'记账明细分类表 ID';

comment on column ledger_detail.detail_type is
'明细类型 ( detail_category 表的冗余字段 ) {"收入":1,"支出":2}';

comment on column ledger_detail.amount is
'金额';

comment on column ledger_detail.remark is
'备注';

comment on column ledger_detail.year is
'创建时间 ( 冗余字段) [年]';

comment on column ledger_detail.month is
'创建时间 ( 冗余字段) [月]';

comment on column ledger_detail.day is
'创建时间 ( 冗余字段) [日]';

comment on column ledger_detail.week is
'创建时间 ( 冗余字段) [周]';

comment on column ledger_detail.date_number is
'创建时间 ( 冗余字段) [年月日]';

comment on column ledger_detail.create_time is
'创建时间 ( UTC )';

comment on column ledger_detail.update_time is
'更新时间 ( UTC )';

