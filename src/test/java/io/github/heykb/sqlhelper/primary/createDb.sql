-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS "people";
CREATE TABLE "people" (
  "name" varchar(255) ,
  "age" int4,
  "email" varchar(255) ,
  "id" varchar(255)  NOT NULL,
  "tenant_id" varchar ,
  "dept_id" varchar ,
  "created_time" timestamp(6) NOT NULL DEFAULT now(),
  "created_by" varchar(255) ,
  "updated_time" timestamp(6),
  "updated_by" varchar(255),
  CONSTRAINT "people_pkey" PRIMARY KEY ("id")
)
;
COMMENT ON COLUMN "people"."created_time" IS '创建时间';
COMMENT ON COLUMN "people"."created_by" IS '创建人';
COMMENT ON COLUMN "people"."updated_time" IS '更新时间';
COMMENT ON COLUMN "people"."updated_by" IS '更新人';


DROP TABLE IF EXISTS "department";
CREATE TABLE "department" (
  "dept_id" varchar  NOT NULL,
  "dept_name" varchar(255) ,
  "tenant_id" varchar ,
  "created_time" timestamp(6) NOT NULL DEFAULT now(),
  "created_by" varchar(255) ,
  "updated_time" timestamp(6),
  "updated_by" varchar(255) ,
  CONSTRAINT "dept_pkey" PRIMARY KEY ("dept_id")
)
;

ALTER TABLE "department" 
  OWNER TO "postgres";

COMMENT ON COLUMN "department"."created_time" IS '创建时间';

COMMENT ON COLUMN "department"."created_by" IS '创建人';

COMMENT ON COLUMN "department"."updated_time" IS '更新时间';

COMMENT ON COLUMN "department"."updated_by" IS '更新人';

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO "people" VALUES ('tom', NULL, NULL, '1', '1', NULL, '2021-11-12 12:18:14.235029', 'heykb', NULL, 'heykb');
INSERT INTO "people" VALUES ('tony', NULL, NULL, '2', '2', NULL, '2021-11-12 12:18:14.235029', 'heykb', NULL, 'heykb');

