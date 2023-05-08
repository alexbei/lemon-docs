/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.23.128
 Source Server Type    : PostgreSQL
 Source Server Version : 150002 (150002)
 Source Host           : 192.168.23.128:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150002 (150002)
 File Encoding         : 65001

 Date: 08/05/2023 10:35:50
*/


-- ----------------------------
-- Sequence structure for acct_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."acct_category_id_seq";
CREATE SEQUENCE "public"."acct_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for acct_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."acct_type_id_seq";
CREATE SEQUENCE "public"."acct_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for acct_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."acct_category";
CREATE TABLE "public"."acct_category" (
  "id" int8 NOT NULL DEFAULT nextval('acct_category_id_seq'::regclass),
  "acct_type_id" int8 NOT NULL,
  "name" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "icon" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."acct_category"."id" IS 'ID';
COMMENT ON COLUMN "public"."acct_category"."acct_type_id" IS '记账类型ID';
COMMENT ON COLUMN "public"."acct_category"."name" IS '类目名称';
COMMENT ON COLUMN "public"."acct_category"."icon" IS 'Icon';
COMMENT ON COLUMN "public"."acct_category"."sort" IS '排序';
COMMENT ON TABLE "public"."acct_category" IS '记账类目';

-- ----------------------------
-- Records of acct_category
-- ----------------------------
INSERT INTO "public"."acct_category" VALUES (1, 1, '餐饮', 'add', 1);
INSERT INTO "public"."acct_category" VALUES (2, 1, '购物', 'add', 2);
INSERT INTO "public"."acct_category" VALUES (3, 2, '工资', 'add', 1);
INSERT INTO "public"."acct_category" VALUES (4, 1, '交通', 'add', 3);
INSERT INTO "public"."acct_category" VALUES (5, 1, '娱乐', 'add', 4);
INSERT INTO "public"."acct_category" VALUES (6, 1, '通讯', 'add', 5);

-- ----------------------------
-- Table structure for acct_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."acct_type";
CREATE TABLE "public"."acct_type" (
  "id" int8 NOT NULL DEFAULT nextval('acct_type_id_seq'::regclass),
  "type_name" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."acct_type"."id" IS 'ID';
COMMENT ON COLUMN "public"."acct_type"."type_name" IS '类型名称';
COMMENT ON COLUMN "public"."acct_type"."sort" IS '排序';
COMMENT ON TABLE "public"."acct_type" IS '记账类型';

-- ----------------------------
-- Records of acct_type
-- ----------------------------
INSERT INTO "public"."acct_type" VALUES (1, '支出', 1);
INSERT INTO "public"."acct_type" VALUES (2, '收入', 2);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."acct_category_id_seq"
OWNED BY "public"."acct_category"."id";
SELECT setval('"public"."acct_category_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."acct_type_id_seq"
OWNED BY "public"."acct_type"."id";
SELECT setval('"public"."acct_type_id_seq"', 1, false);

-- ----------------------------
-- Uniques structure for table acct_category
-- ----------------------------
ALTER TABLE "public"."acct_category" ADD CONSTRAINT "ak_key_2_acct_cat" UNIQUE ("acct_type_id", "sort");

-- ----------------------------
-- Primary Key structure for table acct_category
-- ----------------------------
ALTER TABLE "public"."acct_category" ADD CONSTRAINT "pk_acct_category" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table acct_type
-- ----------------------------
ALTER TABLE "public"."acct_type" ADD CONSTRAINT "ak_key_2_acct_typ" UNIQUE ("sort");

-- ----------------------------
-- Primary Key structure for table acct_type
-- ----------------------------
ALTER TABLE "public"."acct_type" ADD CONSTRAINT "pk_acct_type" PRIMARY KEY ("id");
