/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     2023/6/2 3:56:36                             */
/*==============================================================*/


/*==============================================================*/
/* Table: acct_type                                             */
/*==============================================================*/
create table acct_type (
   id                   BIGSERIAL            not null,
   type                 INT2                 not null,
   icon                 VARCHAR(255)         not null,
   icon_name            VARCHAR(255)         not null,
   sort                 INT8                 not null,
   create_time          TIMESTAMP WITH TIME ZONE not null,
   update_time          TIMESTAMP WITH TIME ZONE not null,
   constraint PK_ACCT_TYPE primary key (id),
   constraint AK_KEY_2_ACCT_TYP unique (type, sort)
);

comment on table acct_type is
'记账类型表';

comment on column acct_type.id is
'ID';

comment on column acct_type.type is
'记账类型 {"收入":1,"支出":2}';

comment on column acct_type.icon is
'Icon 图标';

comment on column acct_type.icon_name is
'Icon 名称';

comment on column acct_type.sort is
'排序序号';

comment on column acct_type.create_time is
'创建时间';

comment on column acct_type.update_time is
'更新时间';

/*==============================================================*/
/* Table: ledger_detail                                         */
/*==============================================================*/
create table ledger_detail (
   id                   BIGSERIAL            not null,
   acct_type_id         INT8                 not null,
   amount               NUMERIC(72,18)       not null,
   remark               VARCHAR(255)         null,
   create_time          TIMESTAMP WITH TIME ZONE not null,
   update_time          TIMESTAMP WITH TIME ZONE not null,
   constraint PK_LEDGER_DETAIL primary key (id)
);

comment on table ledger_detail is
'记账明细表';

comment on column ledger_detail.id is
'ID';

comment on column ledger_detail.acct_type_id is
'记账类型表 ID';

comment on column ledger_detail.amount is
'金额';

comment on column ledger_detail.remark is
'备注';

comment on column ledger_detail.create_time is
'创建时间';

comment on column ledger_detail.update_time is
'更新时间';

