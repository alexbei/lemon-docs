create table acct_type
(
    id          bigserial
        constraint acct_type_pk
            primary key,
    type        smallint                 not null,
    icon        varchar(255)             not null,
    icon_name   varchar(255)             not null,
    sort        bigint                   not null,
    create_time timestamp with time zone not null,
    update_time timestamp with time zone not null,
    constraint acct_type_pk2
        unique (type, sort)
);

alter table acct_type
    owner to postgres;

INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (1, 2, 'yundong', '运动', 8, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (2, 2, 'yule', '娱乐', 9, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (3, 2, 'tongxun', '通讯', 10, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (4, 2, 'fushi', '服饰', 11, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (5, 2, 'meirong', '美容', 12, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (6, 2, 'yiliao', '医疗', 22, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (7, 2, 'shu', '书籍', 23, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (8, 2, 'peixunxuexi', '学习', 24, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (9, 2, 'chongwuzhongxin', '宠物', 25, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (10, 2, 'liwuhuodong', '礼物', 27, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (11, 2, 'bangongyongpin', '办公', 28, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (12, 2, 'weixiu', '维修', 29, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (13, 2, '019-donation', '捐赠', 30, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (14, 2, 'caipiao', '彩票', 31, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (15, 2, 'chengyuan', '亲友', 32, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (16, 2, 'truck', '快递', 33, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (17, 2, 'shengjilijin', '礼金', 26, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (18, 2, 'loufangfangzi', '住房', 13, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (19, 1, 'gongzi', '工资', 1, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (20, 1, 'jianzhi', '兼职', 2, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (21, 1, 'licai', '理财', 3, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (22, 1, 'hongbao', '礼金', 4, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (23, 1, 'qitashouru', '其他', 5, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (24, 2, 'shafazuoweikongwei', '居家', 14, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (25, 2, 'ertongtequan', '孩子', 15, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (26, 2, 'fumu', '长辈', 16, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (27, 2, '13', '社交', 17, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (28, 2, 'aircraft', '旅行', 18, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (29, 2, 'yanjiu', '烟酒', 19, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (30, 2, 'canyin', '餐饮', 1, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (31, 2, 'duogouwu', '购物', 2, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (32, 2, 'zhijin-juanzhi', '卷纸', 3, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (33, 2, 'gonggongjiaotong', '交通', 4, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (34, 2, 'huluobu', '蔬菜', 5, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (35, 2, 'shumajiadian', '数码', 20, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (36, 2, 'qichepeijian', '汽车', 21, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (37, 2, 'shuiguo', '水果', 6, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
INSERT INTO public.acct_type (id, type, icon, icon_name, sort, create_time, update_time) VALUES (38, 2, 'lingshi', '零食', 7, '2023-05-25 23:03:34.006000 +00:00', '2023-05-25 23:03:34.006000 +00:00');
