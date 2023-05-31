/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     2023/5/27 20:50:06                           */
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

