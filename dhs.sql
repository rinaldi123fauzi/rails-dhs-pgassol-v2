/*
 Navicat Premium Data Transfer

 Source Server         : App_Dev_192.168.60.56
 Source Server Type    : PostgreSQL
 Source Server Version : 90519
 Source Host           : 192.168.60.56:5432
 Source Catalog        : dhs
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90519
 File Encoding         : 65001

 Date: 13/07/2020 13:47:04
*/


-- ----------------------------
-- Sequence structure for brands_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "brands_id_seq";
CREATE SEQUENCE "brands_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for brochures_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "brochures_id_seq";
CREATE SEQUENCE "brochures_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for countries_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "countries_id_seq";
CREATE SEQUENCE "countries_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for currencies_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "currencies_id_seq";
CREATE SEQUENCE "currencies_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for deliveries_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "deliveries_id_seq";
CREATE SEQUENCE "deliveries_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for delivery_items_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "delivery_items_id_seq";
CREATE SEQUENCE "delivery_items_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for detail_items_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "detail_items_id_seq";
CREATE SEQUENCE "detail_items_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for disiplines_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "disiplines_id_seq";
CREATE SEQUENCE "disiplines_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for indonesia_cities_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "indonesia_cities_id_seq";
CREATE SEQUENCE "indonesia_cities_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for indonesia_districts_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "indonesia_districts_id_seq";
CREATE SEQUENCE "indonesia_districts_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for indonesia_provinces_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "indonesia_provinces_id_seq";
CREATE SEQUENCE "indonesia_provinces_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for indonesia_villages_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "indonesia_villages_id_seq";
CREATE SEQUENCE "indonesia_villages_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for item_price_letters_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "item_price_letters_id_seq";
CREATE SEQUENCE "item_price_letters_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for items_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "items_id_seq";
CREATE SEQUENCE "items_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for price_items_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "price_items_id_seq";
CREATE SEQUENCE "price_items_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for price_letters_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "price_letters_id_seq";
CREATE SEQUENCE "price_letters_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for products_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "products_id_seq";
CREATE SEQUENCE "products_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for referensi_items_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "referensi_items_id_seq";
CREATE SEQUENCE "referensi_items_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for role_assignments_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "role_assignments_id_seq";
CREATE SEQUENCE "role_assignments_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "roles_id_seq";
CREATE SEQUENCE "roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for types_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "types_id_seq";
CREATE SEQUENCE "types_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for units_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "units_id_seq";
CREATE SEQUENCE "units_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_activities_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "user_activities_id_seq";
CREATE SEQUENCE "user_activities_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "users_id_seq";
CREATE SEQUENCE "users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vendors_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "vendors_id_seq";
CREATE SEQUENCE "vendors_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS "ar_internal_metadata";
CREATE TABLE "ar_internal_metadata" (
  "key" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
BEGIN;
INSERT INTO "ar_internal_metadata" VALUES ('environment', 'development', '2020-04-30 22:01:02.912625', '2020-04-30 22:01:02.912625');
COMMIT;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS "brands";
CREATE TABLE "brands" (
  "id" int4 NOT NULL DEFAULT nextval('brands_id_seq'::regclass),
  "name_brand" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of brands
-- ----------------------------
BEGIN;
INSERT INTO "brands" VALUES (5, 'Raci', '2020-06-15 12:04:59.257167', '2020-06-15 12:04:59.257167');
INSERT INTO "brands" VALUES (7, 'jsdkfsj', '2020-07-01 09:57:09.055344', '2020-07-01 09:57:09.055344');
INSERT INTO "brands" VALUES (8, 'klsjdfksd', '2020-07-01 10:06:33.579114', '2020-07-01 10:06:33.579114');
INSERT INTO "brands" VALUES (9, 'ssjsjsjsjs', '2020-07-01 10:15:27.070222', '2020-07-01 10:15:27.070222');
COMMIT;

-- ----------------------------
-- Table structure for brochures
-- ----------------------------
DROP TABLE IF EXISTS "brochures";
CREATE TABLE "brochures" (
  "id" int4 NOT NULL DEFAULT nextval('brochures_id_seq'::regclass),
  "brochure_title" varchar COLLATE "pg_catalog"."default",
  "brochure_path" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "item_id" int4
)
;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS "countries";
CREATE TABLE "countries" (
  "id" int4 NOT NULL DEFAULT nextval('countries_id_seq'::regclass),
  "country_code" varchar COLLATE "pg_catalog"."default",
  "country_name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of countries
-- ----------------------------
BEGIN;
INSERT INTO "countries" VALUES (1, NULL, 'Indonesia', '2020-06-07 00:01:57.565064', '2020-06-07 00:01:57.565064');
INSERT INTO "countries" VALUES (2, NULL, NULL, '2020-06-15 10:44:55.999817', '2020-06-15 10:44:55.999817');
INSERT INTO "countries" VALUES (3, NULL, 'Italy', '2020-06-15 11:45:47.62583', '2020-06-15 11:45:47.62583');
COMMIT;

-- ----------------------------
-- Table structure for currencies
-- ----------------------------
DROP TABLE IF EXISTS "currencies";
CREATE TABLE "currencies" (
  "id" int4 NOT NULL DEFAULT nextval('currencies_id_seq'::regclass),
  "current_name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of currencies
-- ----------------------------
BEGIN;
INSERT INTO "currencies" VALUES (1, 'IDR', '2020-06-07 00:03:15.338721', '2020-06-07 00:03:15.338721');
INSERT INTO "currencies" VALUES (2, NULL, '2020-06-15 10:44:56.055125', '2020-06-15 10:44:56.055125');
COMMIT;

-- ----------------------------
-- Table structure for deliveries
-- ----------------------------
DROP TABLE IF EXISTS "deliveries";
CREATE TABLE "deliveries" (
  "id" int4 NOT NULL DEFAULT nextval('deliveries_id_seq'::regclass),
  "delivery_place" varchar COLLATE "pg_catalog"."default",
  "delivery_inconterm" varchar COLLATE "pg_catalog"."default",
  "delivery_date" date,
  "delivery_vat" int4,
  "delivery_term_payment" varchar COLLATE "pg_catalog"."default",
  "delivery_note" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for delivery_items
-- ----------------------------
DROP TABLE IF EXISTS "delivery_items";
CREATE TABLE "delivery_items" (
  "id" int4 NOT NULL DEFAULT nextval('delivery_items_id_seq'::regclass),
  "delivery_id" int4,
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "price_item_id" int4
)
;

-- ----------------------------
-- Table structure for detail_items
-- ----------------------------
DROP TABLE IF EXISTS "detail_items";
CREATE TABLE "detail_items" (
  "id" int4 NOT NULL DEFAULT nextval('detail_items_id_seq'::regclass),
  "unit_id" int4,
  "dimension2" varchar COLLATE "pg_catalog"."default",
  "dimension3" varchar COLLATE "pg_catalog"."default",
  "dft" varchar COLLATE "pg_catalog"."default",
  "vol_solid" varchar COLLATE "pg_catalog"."default",
  "spreading_rate" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "item_id" int4
)
;

-- ----------------------------
-- Records of detail_items
-- ----------------------------
BEGIN;
INSERT INTO "detail_items" VALUES (2047, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:43:37.671383', '2020-07-13 13:43:37.671383', 2052);
INSERT INTO "detail_items" VALUES (2048, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:43:37.829662', '2020-07-13 13:43:37.829662', 2053);
INSERT INTO "detail_items" VALUES (2049, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:43:37.991315', '2020-07-13 13:43:37.991315', 2054);
INSERT INTO "detail_items" VALUES (2050, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:43:58.290299', '2020-07-13 13:43:58.290299', 2055);
INSERT INTO "detail_items" VALUES (2051, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:43:58.41233', '2020-07-13 13:43:58.41233', 2056);
INSERT INTO "detail_items" VALUES (2052, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:43:58.529405', '2020-07-13 13:43:58.529405', 2057);
INSERT INTO "detail_items" VALUES (2053, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:44:40.24712', '2020-07-13 13:44:40.24712', 2058);
INSERT INTO "detail_items" VALUES (2054, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:44:40.34164', '2020-07-13 13:44:40.34164', 2059);
INSERT INTO "detail_items" VALUES (2055, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:44:40.442351', '2020-07-13 13:44:40.442351', 2060);
INSERT INTO "detail_items" VALUES (2056, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:45:30.833453', '2020-07-13 13:45:30.833453', 2061);
INSERT INTO "detail_items" VALUES (2057, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:45:31.004627', '2020-07-13 13:45:31.004627', 2062);
INSERT INTO "detail_items" VALUES (2058, 3, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:45:31.129551', '2020-07-13 13:45:31.129551', 2063);
COMMIT;

-- ----------------------------
-- Table structure for disiplines
-- ----------------------------
DROP TABLE IF EXISTS "disiplines";
CREATE TABLE "disiplines" (
  "id" int4 NOT NULL DEFAULT nextval('disiplines_id_seq'::regclass),
  "name" varchar COLLATE "pg_catalog"."default",
  "category" varchar COLLATE "pg_catalog"."default",
  "logo" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of disiplines
-- ----------------------------
BEGIN;
INSERT INTO "disiplines" VALUES (1, 'PIPELINE', '', 'logo_items/if_gas_pipe-oil_industry-power-factory-illustration-energy-gas-refinery-fuel-symbol-industrial_3652545.png', '2020-06-07 00:01:57.634842', '2020-06-07 00:12:25.742374');
INSERT INTO "disiplines" VALUES (6, 'CIVIL', '', 'logo_items/if_Citycons_building_1342941.png', '2020-06-07 00:11:22.301227', '2020-06-07 00:13:10.890348');
INSERT INTO "disiplines" VALUES (5, 'INSTRUMENT', '', 'logo_items/if_oil_extraction-oil_industry-power-factory-illustration-energy-gas-refinery-fuel-symbol-industrial_3652540.png', '2020-06-07 00:10:08.827963', '2020-06-07 00:13:34.740043');
INSERT INTO "disiplines" VALUES (4, 'PIPING', '', 'logo_items/if_oil_valve-oil_industry-power-factory-illustration-energy-gas-refinery-fuel-symbol-industrial_3652542.png', '2020-06-07 00:07:30.252825', '2020-06-07 00:14:11.077499');
INSERT INTO "disiplines" VALUES (3, 'MECHANICAL', '', 'logo_items/if_boilar-oil_industry-power-factory-illustration-energy-gas-refinery-fuel-symbol-industrial_3652523.png', '2020-06-07 00:06:29.321476', '2020-06-07 00:14:42.881883');
INSERT INTO "disiplines" VALUES (2, 'ELECTRICAL', '', 'logo_items/1569202832if_Citycons_power_1342951.png', '2020-06-07 00:04:16.62109', '2020-07-08 11:19:00.13144');
COMMIT;

-- ----------------------------
-- Table structure for indonesia_cities
-- ----------------------------
DROP TABLE IF EXISTS "indonesia_cities";
CREATE TABLE "indonesia_cities" (
  "id" int4 NOT NULL DEFAULT nextval('indonesia_cities_id_seq'::regclass),
  "province_id" int4,
  "name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for indonesia_districts
-- ----------------------------
DROP TABLE IF EXISTS "indonesia_districts";
CREATE TABLE "indonesia_districts" (
  "id" int4 NOT NULL DEFAULT nextval('indonesia_districts_id_seq'::regclass),
  "city_id" int4,
  "name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for indonesia_provinces
-- ----------------------------
DROP TABLE IF EXISTS "indonesia_provinces";
CREATE TABLE "indonesia_provinces" (
  "id" int4 NOT NULL DEFAULT nextval('indonesia_provinces_id_seq'::regclass),
  "name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for indonesia_villages
-- ----------------------------
DROP TABLE IF EXISTS "indonesia_villages";
CREATE TABLE "indonesia_villages" (
  "id" int4 NOT NULL DEFAULT nextval('indonesia_villages_id_seq'::regclass),
  "district_id" int4,
  "name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for item_price_letters
-- ----------------------------
DROP TABLE IF EXISTS "item_price_letters";
CREATE TABLE "item_price_letters" (
  "id" int4 NOT NULL DEFAULT nextval('item_price_letters_id_seq'::regclass),
  "item_id" int4,
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "price_item_id" int4
)
;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS "items";
CREATE TABLE "items" (
  "id" int4 NOT NULL DEFAULT nextval('items_id_seq'::regclass),
  "brand_id" int4,
  "disipline_id" int4,
  "size" varchar COLLATE "pg_catalog"."default",
  "class_item" varchar COLLATE "pg_catalog"."default",
  "dimension" varchar COLLATE "pg_catalog"."default",
  "general_spec" text COLLATE "pg_catalog"."default",
  "scope_of_supply" varchar COLLATE "pg_catalog"."default",
  "others" varchar COLLATE "pg_catalog"."default",
  "note" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "type_id" int4,
  "product_id" int4,
  "delivery_point" varchar COLLATE "pg_catalog"."default",
  "vendor_id" int4
)
;

-- ----------------------------
-- Records of items
-- ----------------------------
BEGIN;
INSERT INTO "items" VALUES (2052, 5, 1, '20 inch x16 inch', NULL, '20" x16"', 'End seal pipe (4M25 & 1N25)', NULL, NULL, NULL, '2020-07-13 13:43:37.650208', '2020-07-13 13:43:37.650208', 775, 749, 'Jakarta', 5);
INSERT INTO "items" VALUES (2053, 5, 1, '20 inch x16 inch', NULL, '20" x16"', ' Casing spacer dan insulator Closed Conic', NULL, NULL, NULL, '2020-07-13 13:43:37.825644', '2020-07-13 13:43:37.825644', 776, 750, 'Jakarta', 5);
INSERT INTO "items" VALUES (2054, 5, 1, 'NA', NULL, NULL, 'For Casing spacer dan insulator dia 20" x16"', NULL, NULL, NULL, '2020-07-13 13:43:37.987447', '2020-07-13 13:43:37.987447', 777, 751, 'Jakarta', 5);
INSERT INTO "items" VALUES (2055, 5, 1, '20 inch x16 inch', NULL, '20" x16"', 'End seal pipe (4M25 & 1N25)', NULL, NULL, NULL, '2020-07-13 13:43:58.286341', '2020-07-13 13:43:58.286341', 778, 752, 'Jakarta', 5);
INSERT INTO "items" VALUES (2056, 5, 1, '20 inch x16 inch', NULL, '20" x16"', ' Casing spacer dan insulator Closed Conic', NULL, NULL, NULL, '2020-07-13 13:43:58.408372', '2020-07-13 13:43:58.408372', 779, 753, 'Jakarta', 5);
INSERT INTO "items" VALUES (2057, 5, 1, 'NA', NULL, NULL, 'For Casing spacer dan insulator dia 20" x16"', NULL, NULL, NULL, '2020-07-13 13:43:58.525324', '2020-07-13 13:43:58.525324', 780, 754, 'Jakarta', 5);
INSERT INTO "items" VALUES (2058, 5, 5, '20 inch x16 inch', NULL, '20" x16"', 'End seal pipe (4M25 & 1N25)', NULL, NULL, NULL, '2020-07-13 13:44:40.243532', '2020-07-13 13:44:40.243532', 781, 755, 'Jakarta', 5);
INSERT INTO "items" VALUES (2059, 5, 5, '20 inch x16 inch', NULL, '20" x16"', ' Casing spacer dan insulator Closed Conic', NULL, NULL, NULL, '2020-07-13 13:44:40.338159', '2020-07-13 13:44:40.338159', 782, 756, 'Jakarta', 5);
INSERT INTO "items" VALUES (2060, 5, 5, 'NA', NULL, NULL, 'For Casing spacer dan insulator dia 20" x16"', NULL, NULL, NULL, '2020-07-13 13:44:40.438745', '2020-07-13 13:44:40.438745', 783, 757, 'Jakarta', 5);
INSERT INTO "items" VALUES (2061, 5, 6, '20 inch x16 inch', NULL, '20" x16"', 'End seal pipe (4M25 & 1N25)', NULL, NULL, NULL, '2020-07-13 13:45:30.829842', '2020-07-13 13:45:30.829842', 784, 758, 'Jakarta', 5);
INSERT INTO "items" VALUES (2062, 5, 6, '20 inch x16 inch', NULL, '20" x16"', ' Casing spacer dan insulator Closed Conic', NULL, NULL, NULL, '2020-07-13 13:45:31.000956', '2020-07-13 13:45:31.000956', 785, 759, 'Jakarta', 5);
INSERT INTO "items" VALUES (2063, 5, 6, 'NA', NULL, NULL, 'For Casing spacer dan insulator dia 20" x16"', NULL, NULL, NULL, '2020-07-13 13:45:31.125984', '2020-07-13 13:45:31.125984', 786, 760, 'Jakarta', 5);
COMMIT;

-- ----------------------------
-- Table structure for price_items
-- ----------------------------
DROP TABLE IF EXISTS "price_items";
CREATE TABLE "price_items" (
  "id" int4 NOT NULL DEFAULT nextval('price_items_id_seq'::regclass),
  "place" varchar COLLATE "pg_catalog"."default",
  "project_name" varchar COLLATE "pg_catalog"."default",
  "incoterm" varchar COLLATE "pg_catalog"."default",
  "date" date,
  "vat" varchar COLLATE "pg_catalog"."default",
  "term_payment" text COLLATE "pg_catalog"."default",
  "delivery_time" text COLLATE "pg_catalog"."default",
  "price" float8,
  "status" int4,
  "note" varchar COLLATE "pg_catalog"."default",
  "last" int4,
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "price_letter_id" int4,
  "referensi_item_id" int4,
  "country_id" int4,
  "vendor_id" int4,
  "currency_id" int4,
  "item_id" int4
)
;

-- ----------------------------
-- Records of price_items
-- ----------------------------
BEGIN;
INSERT INTO "price_items" VALUES (2082, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 4855760, NULL, NULL, NULL, '2020-07-13 13:43:37.708332', '2020-07-13 13:43:37.708332', NULL, NULL, 3, 5, 1, 2052);
INSERT INTO "price_items" VALUES (2083, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 747040, NULL, NULL, NULL, '2020-07-13 13:43:37.835351', '2020-07-13 13:43:37.835351', NULL, NULL, 3, 5, 1, 2053);
INSERT INTO "price_items" VALUES (2084, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 12569760, NULL, NULL, NULL, '2020-07-13 13:43:37.996874', '2020-07-13 13:43:37.996874', NULL, NULL, 3, 5, 1, 2054);
INSERT INTO "price_items" VALUES (2085, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 4855760, NULL, NULL, NULL, '2020-07-13 13:43:58.295824', '2020-07-13 13:43:58.295824', NULL, NULL, 3, 5, 1, 2055);
INSERT INTO "price_items" VALUES (2086, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 747040, NULL, NULL, NULL, '2020-07-13 13:43:58.417642', '2020-07-13 13:43:58.417642', NULL, NULL, 3, 5, 1, 2056);
INSERT INTO "price_items" VALUES (2087, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 12569760, NULL, NULL, NULL, '2020-07-13 13:43:58.535151', '2020-07-13 13:43:58.535151', NULL, NULL, 3, 5, 1, 2057);
INSERT INTO "price_items" VALUES (2088, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 4855760, NULL, NULL, NULL, '2020-07-13 13:44:40.253529', '2020-07-13 13:44:40.253529', NULL, NULL, 3, 5, 1, 2058);
INSERT INTO "price_items" VALUES (2089, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 747040, NULL, NULL, NULL, '2020-07-13 13:44:40.347017', '2020-07-13 13:44:40.347017', NULL, NULL, 3, 5, 1, 2059);
INSERT INTO "price_items" VALUES (2090, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 12569760, NULL, NULL, NULL, '2020-07-13 13:44:40.447618', '2020-07-13 13:44:40.447618', NULL, NULL, 3, 5, 1, 2060);
INSERT INTO "price_items" VALUES (2091, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 4855760, NULL, NULL, NULL, '2020-07-13 13:45:30.838665', '2020-07-13 13:45:30.838665', NULL, NULL, 3, 5, 1, 2061);
INSERT INTO "price_items" VALUES (2092, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 747040, NULL, NULL, NULL, '2020-07-13 13:45:31.009735', '2020-07-13 13:45:31.009735', NULL, NULL, 3, 5, 1, 2062);
INSERT INTO "price_items" VALUES (2093, NULL, 'Pertamina Line Fire Water RU IV Cilacap', 'Franco Jakarta', '2018-12-04', 'Exclude', NULL, 'indent 12 weeks working days after Receiv PO & DP', 12569760, NULL, NULL, NULL, '2020-07-13 13:45:31.134592', '2020-07-13 13:45:31.134592', NULL, NULL, 3, 5, 1, 2063);
COMMIT;

-- ----------------------------
-- Table structure for price_letters
-- ----------------------------
DROP TABLE IF EXISTS "price_letters";
CREATE TABLE "price_letters" (
  "id" int4 NOT NULL DEFAULT nextval('price_letters_id_seq'::regclass),
  "price_letter_title" varchar COLLATE "pg_catalog"."default",
  "price_letter_path" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of price_letters
-- ----------------------------
BEGIN;
INSERT INTO "price_letters" VALUES (1, 'testing', 'testing', '2020-06-09 08:01:15', '2020-06-09 08:01:20');
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS "products";
CREATE TABLE "products" (
  "id" int4 NOT NULL DEFAULT nextval('products_id_seq'::regclass),
  "product_name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "disipline_id" int4
)
;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO "products" VALUES (749, 'End Seal', '2020-07-13 13:43:37.517075', '2020-07-13 13:43:37.517075', 1);
INSERT INTO "products" VALUES (750, 'Spacer', '2020-07-13 13:43:37.772454', '2020-07-13 13:43:37.772454', 1);
INSERT INTO "products" VALUES (751, 'Clamp Tool', '2020-07-13 13:43:37.932868', '2020-07-13 13:43:37.932868', 1);
INSERT INTO "products" VALUES (752, 'End Seal1', '2020-07-13 13:43:58.226489', '2020-07-13 13:43:58.226489', 1);
INSERT INTO "products" VALUES (753, 'Spacer1', '2020-07-13 13:43:58.353726', '2020-07-13 13:43:58.353726', 1);
INSERT INTO "products" VALUES (754, 'Clamp Tool1', '2020-07-13 13:43:58.452632', '2020-07-13 13:43:58.452632', 1);
INSERT INTO "products" VALUES (755, 'End Seal', '2020-07-13 13:44:40.18685', '2020-07-13 13:44:40.18685', 5);
INSERT INTO "products" VALUES (756, 'Spacer', '2020-07-13 13:44:40.284572', '2020-07-13 13:44:40.284572', 5);
INSERT INTO "products" VALUES (757, 'Clamp Tool', '2020-07-13 13:44:40.384809', '2020-07-13 13:44:40.384809', 5);
INSERT INTO "products" VALUES (758, 'End Seal1', '2020-07-13 13:45:30.714062', '2020-07-13 13:45:30.714062', 6);
INSERT INTO "products" VALUES (759, 'Spacer1', '2020-07-13 13:45:30.9115', '2020-07-13 13:45:30.9115', 6);
INSERT INTO "products" VALUES (760, 'Clamp Tool1', '2020-07-13 13:45:31.07294', '2020-07-13 13:45:31.07294', 6);
COMMIT;

-- ----------------------------
-- Table structure for referensi_items
-- ----------------------------
DROP TABLE IF EXISTS "referensi_items";
CREATE TABLE "referensi_items" (
  "id" int4 NOT NULL DEFAULT nextval('referensi_items_id_seq'::regclass),
  "name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of referensi_items
-- ----------------------------
BEGIN;
INSERT INTO "referensi_items" VALUES (1, 'testing', '2020-06-09 08:00:43', '2020-06-09 08:00:47');
COMMIT;

-- ----------------------------
-- Table structure for role_assignments
-- ----------------------------
DROP TABLE IF EXISTS "role_assignments";
CREATE TABLE "role_assignments" (
  "id" int4 NOT NULL DEFAULT nextval('role_assignments_id_seq'::regclass),
  "user_id" int4,
  "role_id" int4,
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of role_assignments
-- ----------------------------
BEGIN;
INSERT INTO "role_assignments" VALUES (1, 1, 1, '2020-06-06 23:58:31.88882', '2020-06-06 23:58:31.88882');
INSERT INTO "role_assignments" VALUES (2, 2, 1, '2020-06-06 23:59:04.127497', '2020-06-06 23:59:04.127497');
INSERT INTO "role_assignments" VALUES (3, 3, 1, '2020-06-06 23:59:22.237978', '2020-06-06 23:59:22.237978');
INSERT INTO "role_assignments" VALUES (6, 5, 1, '2020-07-07 15:00:33.127807', '2020-07-07 15:00:33.127807');
INSERT INTO "role_assignments" VALUES (9, 7, 2, '2020-07-08 13:27:36.274044', '2020-07-08 13:27:36.274044');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "roles";
CREATE TABLE "roles" (
  "id" int4 NOT NULL DEFAULT nextval('roles_id_seq'::regclass),
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "permissions" text COLLATE "pg_catalog"."default",
  "type" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO "roles" VALUES (1, 'Superadmin', '---
:Unit:
  :manage: true
  :index: true
  :create: true
  :destroy: true
  :update: true
  :read: true
:Brand:
  :manage: true
  :index: true
  :create: true
  :destroy: true
  :update: true
  :read: true
:Brochure:
  :manage: false
  :index: true
  :create: true
  :destroy: true
  :update: true
  :read: true
:Currency:
  :manage: true
  :index: true
  :create: true
  :destroy: true
  :update: true
  :read: true
:Delivery:
  :manage: true
  :index: true
  :create: true
  :destroy: true
  :update: true
  :read: true
:Disipline:
  :manage: true
  :index: true
  :create: true
  :destroy: true
  :update: true
  :read: true
:User:
  :manage: true
  :index: true
  :create: true
  :destroy: true
  :update: true
  :read: true
:Role:
  :manage: true
  :index: true
  :create: true
  :destroy: true
  :update: true
  :read: true
:referensi_item:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:item:
  :import: true
  :getDataTemplate: true
  :manage: false
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:price_item:
  :manage: false
  :create: true
  :new2: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:detail_item:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:delivery_item:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:item_price_letter:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:price_letter:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:country:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:brochure:
  :manage: false
  :create: true
  :new2: true
  :downloadBrochure: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:type:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:product:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
:user_activity:
  :manage: true
  :create: true
  :destroy: true
  :update: true
  :read: true
  :read_public: true
', 'Role', '2020-06-06 23:51:19.58487', '2020-07-08 13:32:31.003715');
INSERT INTO "roles" VALUES (2, 'umum', '---
:Unit:
  :manage: false
  :index: true
  :create: false
  :destroy: false
  :update: false
  :read: true
:Brand:
  :manage: false
  :index: true
  :create: false
  :destroy: false
  :update: false
  :read: true
:Brochure:
  :manage: false
  :index: true
  :create: false
  :destroy: false
  :update: false
  :read: true
:Currency:
  :manage: false
  :index: true
  :create: false
  :destroy: false
  :update: false
  :read: true
:Delivery:
  :manage: false
  :index: true
  :create: false
  :destroy: false
  :update: false
  :read: true
:Disipline:
  :manage: false
  :index: true
  :create: false
  :destroy: false
  :update: false
  :read: true
:User:
  :manage: false
  :index: true
  :create: false
  :destroy: false
  :update: false
  :read: true
:Role:
  :manage: false
  :index: true
  :create: false
  :destroy: false
  :update: false
  :read: true
:referensi_item:
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:item:
  :import: false
  :getDataTemplate: false
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: false
:price_item:
  :manage: false
  :create: false
  :new2: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:detail_item:
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:delivery_item:
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:item_price_letter:
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:price_letter:
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:country:
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:brochure:
  :manage: false
  :create: false
  :new2: false
  :downloadBrochure: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:type:
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:product:
  :manage: false
  :create: false
  :destroy: false
  :update: false
  :read: false
  :read_public: true
:user_activity:
  :manage: false
  :create: true
  :destroy: false
  :update: true
  :read: false
  :read_public: false
', 'Role', '2020-06-06 23:52:38.212142', '2020-07-08 13:32:45.806662');
COMMIT;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS "schema_migrations";
CREATE TABLE "schema_migrations" (
  "version" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
BEGIN;
INSERT INTO "schema_migrations" VALUES ('20160907132658');
INSERT INTO "schema_migrations" VALUES ('20200430221048');
INSERT INTO "schema_migrations" VALUES ('20200430221213');
INSERT INTO "schema_migrations" VALUES ('20200430221312');
INSERT INTO "schema_migrations" VALUES ('20200430221608');
INSERT INTO "schema_migrations" VALUES ('20200430221654');
INSERT INTO "schema_migrations" VALUES ('20200430221806');
INSERT INTO "schema_migrations" VALUES ('20200430221844');
INSERT INTO "schema_migrations" VALUES ('20200430222421');
INSERT INTO "schema_migrations" VALUES ('20200430222857');
INSERT INTO "schema_migrations" VALUES ('20200430223550');
INSERT INTO "schema_migrations" VALUES ('20200430224156');
INSERT INTO "schema_migrations" VALUES ('20200430224231');
INSERT INTO "schema_migrations" VALUES ('20200430224305');
INSERT INTO "schema_migrations" VALUES ('20200501025638');
INSERT INTO "schema_migrations" VALUES ('20200501084617');
INSERT INTO "schema_migrations" VALUES ('20200501085744');
INSERT INTO "schema_migrations" VALUES ('20200502105016');
INSERT INTO "schema_migrations" VALUES ('20200505090145');
INSERT INTO "schema_migrations" VALUES ('20200505090924');
INSERT INTO "schema_migrations" VALUES ('20200505091312');
INSERT INTO "schema_migrations" VALUES ('20200511090622');
INSERT INTO "schema_migrations" VALUES ('20200511133411');
INSERT INTO "schema_migrations" VALUES ('20200511221627');
INSERT INTO "schema_migrations" VALUES ('20200511223454');
INSERT INTO "schema_migrations" VALUES ('20200511224819');
INSERT INTO "schema_migrations" VALUES ('20200512072049');
INSERT INTO "schema_migrations" VALUES ('20200512221244');
INSERT INTO "schema_migrations" VALUES ('20200512222135');
INSERT INTO "schema_migrations" VALUES ('20200512223123');
INSERT INTO "schema_migrations" VALUES ('20200512223538');
INSERT INTO "schema_migrations" VALUES ('20200512223910');
INSERT INTO "schema_migrations" VALUES ('20200512224253');
INSERT INTO "schema_migrations" VALUES ('20200512224752');
INSERT INTO "schema_migrations" VALUES ('20200512225300');
INSERT INTO "schema_migrations" VALUES ('20200512225828');
INSERT INTO "schema_migrations" VALUES ('20200512230344');
INSERT INTO "schema_migrations" VALUES ('20200512231018');
INSERT INTO "schema_migrations" VALUES ('20200512231419');
INSERT INTO "schema_migrations" VALUES ('20200515040842');
INSERT INTO "schema_migrations" VALUES ('20200601130713');
INSERT INTO "schema_migrations" VALUES ('20200601205552');
INSERT INTO "schema_migrations" VALUES ('20200603075936');
INSERT INTO "schema_migrations" VALUES ('20200603091714');
INSERT INTO "schema_migrations" VALUES ('20200603092729');
INSERT INTO "schema_migrations" VALUES ('20200603154810');
INSERT INTO "schema_migrations" VALUES ('20200603163219');
INSERT INTO "schema_migrations" VALUES ('20200604060729');
INSERT INTO "schema_migrations" VALUES ('20200604063430');
INSERT INTO "schema_migrations" VALUES ('20200604064436');
INSERT INTO "schema_migrations" VALUES ('20200604083920');
INSERT INTO "schema_migrations" VALUES ('20200606160159');
INSERT INTO "schema_migrations" VALUES ('20200614230902');
INSERT INTO "schema_migrations" VALUES ('20200615041913');
INSERT INTO "schema_migrations" VALUES ('20200615052223');
INSERT INTO "schema_migrations" VALUES ('20200615053655');
INSERT INTO "schema_migrations" VALUES ('20200618022929');
INSERT INTO "schema_migrations" VALUES ('20200618025753');
INSERT INTO "schema_migrations" VALUES ('20200705040952');
COMMIT;

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS "types";
CREATE TABLE "types" (
  "id" int4 NOT NULL DEFAULT nextval('types_id_seq'::regclass),
  "disipline_id" int4,
  "name_type" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "product_id" int4
)
;

-- ----------------------------
-- Records of types
-- ----------------------------
BEGIN;
INSERT INTO "types" VALUES (775, 1, 'End seal pipe dia 20" x16"', '2020-07-13 13:43:37.552551', '2020-07-13 13:43:37.552551', 749);
INSERT INTO "types" VALUES (776, 1, 'Casing spacer dan insulator dia 20" x16"', '2020-07-13 13:43:37.790903', '2020-07-13 13:43:37.790903', 750);
INSERT INTO "types" VALUES (777, 1, 'Clamp Tool', '2020-07-13 13:43:37.951063', '2020-07-13 13:43:37.951063', 751);
INSERT INTO "types" VALUES (778, 1, 'End seal pipe dia 20" x16"', '2020-07-13 13:43:58.250113', '2020-07-13 13:43:58.250113', 752);
INSERT INTO "types" VALUES (779, 1, 'Casing spacer dan insulator dia 20" x16"', '2020-07-13 13:43:58.372183', '2020-07-13 13:43:58.372183', 753);
INSERT INTO "types" VALUES (780, 1, 'Clamp Tool', '2020-07-13 13:43:58.471732', '2020-07-13 13:43:58.471732', 754);
INSERT INTO "types" VALUES (781, 5, 'End seal pipe dia 20" x16"', '2020-07-13 13:44:40.210425', '2020-07-13 13:44:40.210425', 755);
INSERT INTO "types" VALUES (782, 5, 'Casing spacer dan insulator dia 20" x16"', '2020-07-13 13:44:40.303798', '2020-07-13 13:44:40.303798', 756);
INSERT INTO "types" VALUES (783, 5, 'Clamp Tool', '2020-07-13 13:44:40.403926', '2020-07-13 13:44:40.403926', 757);
INSERT INTO "types" VALUES (784, 6, 'End seal pipe dia 20" x16"', '2020-07-13 13:45:30.773042', '2020-07-13 13:45:30.773042', 758);
INSERT INTO "types" VALUES (785, 6, 'Casing spacer dan insulator dia 20" x16"', '2020-07-13 13:45:30.956116', '2020-07-13 13:45:30.956116', 759);
INSERT INTO "types" VALUES (786, 6, 'Clamp Tool', '2020-07-13 13:45:31.09203', '2020-07-13 13:45:31.09203', 760);
COMMIT;

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS "units";
CREATE TABLE "units" (
  "id" int4 NOT NULL DEFAULT nextval('units_id_seq'::regclass),
  "unit_name" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of units
-- ----------------------------
BEGIN;
INSERT INTO "units" VALUES (1, 'Testing', '2020-06-07 00:03:15.361215', '2020-06-07 00:03:15.361215');
INSERT INTO "units" VALUES (2, NULL, '2020-06-15 10:44:56.066406', '2020-06-15 10:44:56.066406');
INSERT INTO "units" VALUES (3, 'Ea', '2020-06-15 11:45:47.653672', '2020-06-15 11:45:47.653672');
INSERT INTO "units" VALUES (4, 'Naldi', '2020-07-07 08:51:17.582882', '2020-07-07 08:51:17.582882');
COMMIT;

-- ----------------------------
-- Table structure for user_activities
-- ----------------------------
DROP TABLE IF EXISTS "user_activities";
CREATE TABLE "user_activities" (
  "id" int4 NOT NULL DEFAULT nextval('user_activities_id_seq'::regclass),
  "user_name" varchar COLLATE "pg_catalog"."default",
  "role" varchar COLLATE "pg_catalog"."default",
  "date" timestamp(6),
  "description" varchar COLLATE "pg_catalog"."default",
  "controller" varchar COLLATE "pg_catalog"."default",
  "action" varchar COLLATE "pg_catalog"."default",
  "browser" varchar COLLATE "pg_catalog"."default",
  "ip_address" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of user_activities
-- ----------------------------
BEGIN;
INSERT INTO "user_activities" VALUES (1, 'superadmin', 'Superadmin', '2020-06-07 16:30:13', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0', '172.16.7.5', '2020-06-07 16:30:13.923096', '2020-06-07 16:30:13.923096');
INSERT INTO "user_activities" VALUES (2, 'superadmin', 'Superadmin', '2020-06-07 16:36:40', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0', '172.16.7.5', '2020-06-07 16:36:40.145913', '2020-06-07 16:36:40.145913');
INSERT INTO "user_activities" VALUES (3, 'maulita', 'Superadmin', '2020-06-15 10:31:25', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '172.16.7.5', '2020-06-15 10:31:25.212846', '2020-06-15 10:31:25.212846');
INSERT INTO "user_activities" VALUES (4, 'maulita', 'Superadmin', '2020-06-15 10:36:58', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '172.16.7.5', '2020-06-15 10:36:58.031403', '2020-06-15 10:36:58.031403');
INSERT INTO "user_activities" VALUES (5, 'rinaldi.fauzi', 'Superadmin', '2020-06-21 23:06:27', 'Import data with disipline : PIPELINE', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-21 23:06:27.197362', '2020-06-21 23:06:27.197362');
INSERT INTO "user_activities" VALUES (6, 'rinaldi.fauzi', 'Superadmin', '2020-06-21 23:06:27', 'Import data with disipline : PIPELINE', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-21 23:06:27.289487', '2020-06-21 23:06:27.289487');
INSERT INTO "user_activities" VALUES (7, 'rinaldi.fauzi', 'Superadmin', '2020-06-21 23:06:27', 'Import data with disipline : PIPELINE', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-21 23:06:27.378459', '2020-06-21 23:06:27.378459');
INSERT INTO "user_activities" VALUES (8, 'rinaldi.fauzi', 'Superadmin', '2020-06-21 23:18:30', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-21 23:18:30.133352', '2020-06-21 23:18:30.133352');
INSERT INTO "user_activities" VALUES (9, 'rinaldi.fauzi', 'Superadmin', '2020-06-21 23:18:30', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-21 23:18:30.230452', '2020-06-21 23:18:30.230452');
INSERT INTO "user_activities" VALUES (10, 'rinaldi.fauzi', 'Superadmin', '2020-06-21 23:18:30', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-21 23:18:30.357671', '2020-06-21 23:18:30.357671');
INSERT INTO "user_activities" VALUES (11, 'superadmin', 'Superadmin', '2020-06-22 08:22:38', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-22 08:22:38.321224', '2020-06-22 08:22:38.321224');
INSERT INTO "user_activities" VALUES (12, 'superadmin', 'Superadmin', '2020-06-22 08:22:38', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-22 08:22:38.411682', '2020-06-22 08:22:38.411682');
INSERT INTO "user_activities" VALUES (13, 'superadmin', 'Superadmin', '2020-06-22 08:22:38', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-22 08:22:38.500261', '2020-06-22 08:22:38.500261');
INSERT INTO "user_activities" VALUES (14, 'rinaldi.fauzi', 'Superadmin', '2020-06-22 12:09:57', 'Item changed : {"general_spec"=>["End seal pipe (4M25 & 1N25)", "End seal pipe (4M25 & 1N25)1"]}', 'items', 'update', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-22 12:09:57.672119', '2020-06-22 12:09:57.672119');
INSERT INTO "user_activities" VALUES (15, 'rinaldi.fauzi', 'Superadmin', '2020-06-22 12:11:43', 'Item changed : {"general_spec"=>["End seal pipe (4M25 & 1N25)1", "End seal pipe (4M25 & 1N25)"]}', 'items', 'update', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0', '172.16.7.5', '2020-06-22 12:11:43.486561', '2020-06-22 12:11:43.486561');
INSERT INTO "user_activities" VALUES (16, 'rinaldi.fauzi', 'Superadmin', '2020-06-22 18:58:33', 'Item changed : {"general_spec"=>[" Casing spacer dan insulator Closed Conic", " Casing spacer dan insulator Closed Conic(Rinaldi)"]}', 'items', 'update', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '172.16.7.5', '2020-06-22 18:58:33.674923', '2020-06-22 18:58:33.674923');
INSERT INTO "user_activities" VALUES (17, 'superadmin', 'Superadmin', '2020-06-25 07:54:18', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '172.16.7.5', '2020-06-25 07:54:18.203021', '2020-06-25 07:54:18.203021');
INSERT INTO "user_activities" VALUES (18, 'superadmin', 'Superadmin', '2020-06-25 10:15:05', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '172.16.7.5', '2020-06-25 10:15:05.270322', '2020-06-25 10:15:05.270322');
INSERT INTO "user_activities" VALUES (19, 'superadmin', 'Superadmin', '2020-06-25 10:15:05', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '172.16.7.5', '2020-06-25 10:15:05.386853', '2020-06-25 10:15:05.386853');
INSERT INTO "user_activities" VALUES (20, 'rinaldi.fauzi', 'Superadmin', '2020-06-25 16:06:54', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '172.16.7.5', '2020-06-25 16:06:54.191217', '2020-06-25 16:06:54.191217');
INSERT INTO "user_activities" VALUES (21, 'rinaldi.fauzi', 'Superadmin', '2020-06-25 16:06:54', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '172.16.7.5', '2020-06-25 16:06:54.287035', '2020-06-25 16:06:54.287035');
INSERT INTO "user_activities" VALUES (22, 'rinaldi.fauzi', 'Superadmin', '2020-06-25 16:06:54', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '172.16.7.5', '2020-06-25 16:06:54.387707', '2020-06-25 16:06:54.387707');
INSERT INTO "user_activities" VALUES (23, 'superadmin', 'Superadmin', '2020-07-07 11:33:27', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-07 11:33:27.16154', '2020-07-07 11:33:27.16154');
INSERT INTO "user_activities" VALUES (24, 'superadmin', 'Superadmin', '2020-07-07 11:47:31', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-07 11:47:31.34227', '2020-07-07 11:47:31.34227');
INSERT INTO "user_activities" VALUES (25, 'superadmin', 'Superadmin', '2020-07-08 08:21:21', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-08 08:21:21.263702', '2020-07-08 08:21:21.263702');
INSERT INTO "user_activities" VALUES (26, 'superadmin', 'Superadmin', '2020-07-08 08:24:51', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-08 08:24:51.217343', '2020-07-08 08:24:51.217343');
INSERT INTO "user_activities" VALUES (27, 'superadmin', 'Superadmin', '2020-07-08 08:35:12', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-08 08:35:12.520692', '2020-07-08 08:35:12.520692');
INSERT INTO "user_activities" VALUES (28, 'superadmin', 'Superadmin', '2020-07-08 09:25:39', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-08 09:25:39.942946', '2020-07-08 09:25:39.942946');
INSERT INTO "user_activities" VALUES (29, 'superadmin', 'Superadmin', '2020-07-08 09:25:40', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-08 09:25:40.042357', '2020-07-08 09:25:40.042357');
INSERT INTO "user_activities" VALUES (30, 'superadmin', 'Superadmin', '2020-07-08 09:25:40', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-08 09:25:40.138145', '2020-07-08 09:25:40.138145');
INSERT INTO "user_activities" VALUES (31, 'superadmin', 'Superadmin', '2020-07-09 08:08:48', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-09 08:08:48.720502', '2020-07-09 08:08:48.720502');
INSERT INTO "user_activities" VALUES (32, 'superadmin', 'Superadmin', '2020-07-09 11:37:12', 'Open index', 'units', 'index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-09 11:37:12.48201', '2020-07-09 11:37:12.48201');
INSERT INTO "user_activities" VALUES (33, 'superadmin', 'Superadmin', '2020-07-13 10:06:42', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:06:42.482844', '2020-07-13 10:06:42.482844');
INSERT INTO "user_activities" VALUES (34, 'superadmin', 'Superadmin', '2020-07-13 10:06:42', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:06:42.602197', '2020-07-13 10:06:42.602197');
INSERT INTO "user_activities" VALUES (35, 'superadmin', 'Superadmin', '2020-07-13 10:06:42', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:06:42.696264', '2020-07-13 10:06:42.696264');
INSERT INTO "user_activities" VALUES (36, 'superadmin', 'Superadmin', '2020-07-13 10:07:43', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:07:43.694269', '2020-07-13 10:07:43.694269');
INSERT INTO "user_activities" VALUES (37, 'superadmin', 'Superadmin', '2020-07-13 10:07:43', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:07:43.776962', '2020-07-13 10:07:43.776962');
INSERT INTO "user_activities" VALUES (38, 'superadmin', 'Superadmin', '2020-07-13 10:07:43', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:07:43.854711', '2020-07-13 10:07:43.854711');
INSERT INTO "user_activities" VALUES (39, 'superadmin', 'Superadmin', '2020-07-13 10:08:31', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:08:31.982101', '2020-07-13 10:08:31.982101');
INSERT INTO "user_activities" VALUES (40, 'superadmin', 'Superadmin', '2020-07-13 10:08:32', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:08:32.064216', '2020-07-13 10:08:32.064216');
INSERT INTO "user_activities" VALUES (41, 'superadmin', 'Superadmin', '2020-07-13 10:08:32', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:08:32.142032', '2020-07-13 10:08:32.142032');
INSERT INTO "user_activities" VALUES (42, 'superadmin', 'Superadmin', '2020-07-13 10:09:13', 'Import data list : {"Disipline : "=>"INSTRUMENT", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:09:13.92476', '2020-07-13 10:09:13.92476');
INSERT INTO "user_activities" VALUES (43, 'superadmin', 'Superadmin', '2020-07-13 10:09:14', 'Import data list : {"Disipline : "=>"INSTRUMENT", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:09:14.02493', '2020-07-13 10:09:14.02493');
INSERT INTO "user_activities" VALUES (44, 'superadmin', 'Superadmin', '2020-07-13 10:09:14', 'Import data list : {"Disipline : "=>"INSTRUMENT", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 10:09:14.124881', '2020-07-13 10:09:14.124881');
INSERT INTO "user_activities" VALUES (45, 'superadmin', 'Superadmin', '2020-07-13 13:43:37', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:43:37.750904', '2020-07-13 13:43:37.750904');
INSERT INTO "user_activities" VALUES (46, 'superadmin', 'Superadmin', '2020-07-13 13:43:37', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:43:37.881157', '2020-07-13 13:43:37.881157');
INSERT INTO "user_activities" VALUES (47, 'superadmin', 'Superadmin', '2020-07-13 13:43:38', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:43:38.01414', '2020-07-13 13:43:38.01414');
INSERT INTO "user_activities" VALUES (48, 'superadmin', 'Superadmin', '2020-07-13 13:43:58', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:43:58.30986', '2020-07-13 13:43:58.30986');
INSERT INTO "user_activities" VALUES (49, 'superadmin', 'Superadmin', '2020-07-13 13:43:58', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:43:58.431202', '2020-07-13 13:43:58.431202');
INSERT INTO "user_activities" VALUES (50, 'superadmin', 'Superadmin', '2020-07-13 13:43:58', 'Import data list : {"Disipline : "=>"PIPELINE", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:43:58.546667', '2020-07-13 13:43:58.546667');
INSERT INTO "user_activities" VALUES (51, 'superadmin', 'Superadmin', '2020-07-13 13:44:40', 'Import data list : {"Disipline : "=>"INSTRUMENT", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:44:40.267822', '2020-07-13 13:44:40.267822');
INSERT INTO "user_activities" VALUES (52, 'superadmin', 'Superadmin', '2020-07-13 13:44:40', 'Import data list : {"Disipline : "=>"INSTRUMENT", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:44:40.362957', '2020-07-13 13:44:40.362957');
INSERT INTO "user_activities" VALUES (53, 'superadmin', 'Superadmin', '2020-07-13 13:44:40', 'Import data list : {"Disipline : "=>"INSTRUMENT", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:44:40.463563', '2020-07-13 13:44:40.463563');
INSERT INTO "user_activities" VALUES (54, 'superadmin', 'Superadmin', '2020-07-13 13:45:30', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"End seal pipe dia 20\" x16\"", "General Spec : "=>"End seal pipe (4M25 & 1N25)"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:45:30.875367', '2020-07-13 13:45:30.875367');
INSERT INTO "user_activities" VALUES (55, 'superadmin', 'Superadmin', '2020-07-13 13:45:31', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"Casing spacer dan insulator dia 20\" x16\"", "General Spec : "=>" Casing spacer dan insulator Closed Conic"}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:45:31.039819', '2020-07-13 13:45:31.039819');
INSERT INTO "user_activities" VALUES (56, 'superadmin', 'Superadmin', '2020-07-13 13:45:31', 'Import data list : {"Disipline : "=>"CIVIL", "Brand : "=>"Raci", "Type : "=>"Clamp Tool", "General Spec : "=>"For Casing spacer dan insulator dia 20\" x16\""}', 'import_items', 'create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '172.16.7.5', '2020-07-13 13:45:31.151048', '2020-07-13 13:45:31.151048');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
  "id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "email" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "encrypted_password" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "reset_password_token" varchar COLLATE "pg_catalog"."default",
  "reset_password_sent_at" timestamp(6),
  "remember_created_at" timestamp(6),
  "sign_in_count" int4 NOT NULL DEFAULT 0,
  "current_sign_in_at" timestamp(6),
  "last_sign_in_at" timestamp(6),
  "current_sign_in_ip" varchar COLLATE "pg_catalog"."default",
  "last_sign_in_ip" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL,
  "user_type" varchar COLLATE "pg_catalog"."default",
  "name" varchar COLLATE "pg_catalog"."default",
  "username" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO "users" VALUES (2, 'maulita@pgn-solution.co.id', '$2a$11$TouoyBCKv2SKDydjANywJu2KQltCPl3vCSg883dfgh6wOdEN18ZLS', NULL, NULL, NULL, 2, '2020-06-18 16:43:04.94993', '2020-06-15 10:30:38.860326', '172.16.7.5', '172.16.7.5', '2020-06-06 23:59:04.125347', '2020-06-18 16:43:04.950802', 'LDAP', 'Maulita', 'maulita');
INSERT INTO "users" VALUES (3, 'azhar@pgn-solution.co.id', '$2a$11$RSgY/uk8Ho8rN4SLwHJZxO8Y.6htqFNpmBdNTwxa2MMrTvcNyyNme', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-06-06 23:59:22.23594', '2020-06-06 23:59:22.23594', 'LDAP', 'Azhar', 'azhar');
INSERT INTO "users" VALUES (5, 'ahadil@pgn-solution.co.id', '$2a$11$Aqpc/Z.YTcRXisRb94qEU.qmsd42v2isAYTP6AFI/7.xt61vGIJpe', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-07-07 15:00:33.119849', '2020-07-07 15:00:33.119849', 'LDAP', 'Ahadil', 'ahadil');
INSERT INTO "users" VALUES (7, 'rinaldi.fauzi@pgn-solution.co.id', '$2a$11$DVXZmcCG1S/elF9VTpKdseBRrbLY5R9NfgfAlHWDJ6xeoYdltfNC2', NULL, NULL, NULL, 26, '2020-07-13 09:06:52.681199', '2020-07-10 17:57:29.610083', '172.16.7.5', '172.16.7.5', '2020-07-08 13:27:36.271744', '2020-07-13 09:06:52.682109', 'LDAP', 'RINALDI FAUZI', 'rinaldi.fauzi');
INSERT INTO "users" VALUES (1, 'smartadmin@example.org', '$2a$11$HnquBzX4bEcb533YbuCGVeGUKwIjDnjoT174JkAjUCPWmVkTQBejG', NULL, NULL, NULL, 109, '2020-07-13 13:36:26.581469', '2020-07-13 09:09:19.803503', '172.16.7.5', '172.16.7.5', '2020-06-06 23:45:26.916073', '2020-07-13 13:36:26.582654', 'Manual', 'Superadmin', 'superadmin');
COMMIT;

-- ----------------------------
-- Table structure for vendors
-- ----------------------------
DROP TABLE IF EXISTS "vendors";
CREATE TABLE "vendors" (
  "id" int4 NOT NULL DEFAULT nextval('vendors_id_seq'::regclass),
  "name" varchar COLLATE "pg_catalog"."default",
  "country_id" int4,
  "business_category" varchar COLLATE "pg_catalog"."default",
  "address" varchar COLLATE "pg_catalog"."default",
  "website" varchar COLLATE "pg_catalog"."default",
  "email" varchar COLLATE "pg_catalog"."default",
  "phone_number" varchar COLLATE "pg_catalog"."default",
  "pic1" varchar COLLATE "pg_catalog"."default",
  "position1" varchar COLLATE "pg_catalog"."default",
  "email1" varchar COLLATE "pg_catalog"."default",
  "phone1" varchar COLLATE "pg_catalog"."default",
  "pic2" varchar COLLATE "pg_catalog"."default",
  "position2" varchar COLLATE "pg_catalog"."default",
  "email2" varchar COLLATE "pg_catalog"."default",
  "phone2" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of vendors
-- ----------------------------
BEGIN;
INSERT INTO "vendors" VALUES (1, 'Toshiba', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-07 00:01:57.611898', '2020-06-07 00:01:57.611898');
INSERT INTO "vendors" VALUES (2, 'Asus', 1, 'testing', 'testing', 'testing', 'testing', '91823981203', 'testing', 'testing', 'testing', 'testing', 'testing', 'testing', 'testing', NULL, '2020-06-11 23:32:38.04295', '2020-06-11 23:32:38.04295');
INSERT INTO "vendors" VALUES (3, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 10:44:56.011918', '2020-06-15 10:44:56.011918');
INSERT INTO "vendors" VALUES (4, 'PT. Perkasa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 10:50:57.070433', '2020-06-15 10:50:57.070433');
INSERT INTO "vendors" VALUES (5, 'PT Imbema Pacific Indonesia', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 11:45:47.637824', '2020-06-15 11:45:47.637824');
INSERT INTO "vendors" VALUES (6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 11:16:32.530572', '2020-07-01 11:16:32.530572');
INSERT INTO "vendors" VALUES (7, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 11:16:33.837411', '2020-07-01 11:16:33.837411');
INSERT INTO "vendors" VALUES (8, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 11:16:35.40095', '2020-07-01 11:16:35.40095');
INSERT INTO "vendors" VALUES (9, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 11:16:37.246102', '2020-07-01 11:16:37.246102');
INSERT INTO "vendors" VALUES (10, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 11:46:21.284506', '2020-07-01 11:46:21.284506');
INSERT INTO "vendors" VALUES (11, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 11:46:23.391126', '2020-07-01 11:46:23.391126');
INSERT INTO "vendors" VALUES (12, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 11:47:43.89774', '2020-07-01 11:47:43.89774');
INSERT INTO "vendors" VALUES (13, 'Samsung', 1, 'testing', 'testing', 'testing', 'testing', '09819283911', 'testing', 'testing', 'testing', '123981239', 'testing', 'testing', 'testing', NULL, '2020-07-02 13:59:00.329784', '2020-07-02 13:59:00.329784');
INSERT INTO "vendors" VALUES (14, 'Naldi', 3, 'testing', 'testing', 'testing', 'testing', '10981230', 'testing', 'testing', 'testing', '198231208', 'testing', 'testing', 'testing', NULL, '2020-07-02 15:18:58.416272', '2020-07-02 15:18:58.416272');
INSERT INTO "vendors" VALUES (15, 'Qwerty', 3, 'testing', 'testing', 'testing', 'testing', '18902831920', 'testing', 'testing', 'testing', '1098239012', 'testing', 'testing', 'testing', NULL, '2020-07-02 16:28:33.331614', '2020-07-02 16:28:33.331614');
INSERT INTO "vendors" VALUES (16, 'Huawei', 1, 'Technology', 'Jl. raya ajah', '', 'huawai@gmail.com', '089128319823', '', '', '', NULL, '', '', '', NULL, '2020-07-04 16:36:09.62435', '2020-07-04 16:36:09.62435');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "brands_id_seq"
OWNED BY "brands"."id";
SELECT setval('"brands_id_seq"', 10, true);
ALTER SEQUENCE "brochures_id_seq"
OWNED BY "brochures"."id";
SELECT setval('"brochures_id_seq"', 15, true);
ALTER SEQUENCE "countries_id_seq"
OWNED BY "countries"."id";
SELECT setval('"countries_id_seq"', 4, true);
ALTER SEQUENCE "currencies_id_seq"
OWNED BY "currencies"."id";
SELECT setval('"currencies_id_seq"', 3, true);
ALTER SEQUENCE "deliveries_id_seq"
OWNED BY "deliveries"."id";
SELECT setval('"deliveries_id_seq"', 2, false);
ALTER SEQUENCE "delivery_items_id_seq"
OWNED BY "delivery_items"."id";
SELECT setval('"delivery_items_id_seq"', 2, false);
ALTER SEQUENCE "detail_items_id_seq"
OWNED BY "detail_items"."id";
SELECT setval('"detail_items_id_seq"', 2059, true);
ALTER SEQUENCE "disiplines_id_seq"
OWNED BY "disiplines"."id";
SELECT setval('"disiplines_id_seq"', 10, true);
ALTER SEQUENCE "indonesia_cities_id_seq"
OWNED BY "indonesia_cities"."id";
SELECT setval('"indonesia_cities_id_seq"', 2, false);
ALTER SEQUENCE "indonesia_districts_id_seq"
OWNED BY "indonesia_districts"."id";
SELECT setval('"indonesia_districts_id_seq"', 2, false);
ALTER SEQUENCE "indonesia_provinces_id_seq"
OWNED BY "indonesia_provinces"."id";
SELECT setval('"indonesia_provinces_id_seq"', 2, false);
ALTER SEQUENCE "indonesia_villages_id_seq"
OWNED BY "indonesia_villages"."id";
SELECT setval('"indonesia_villages_id_seq"', 2, false);
ALTER SEQUENCE "item_price_letters_id_seq"
OWNED BY "item_price_letters"."id";
SELECT setval('"item_price_letters_id_seq"', 2, false);
ALTER SEQUENCE "items_id_seq"
OWNED BY "items"."id";
SELECT setval('"items_id_seq"', 2064, true);
ALTER SEQUENCE "price_items_id_seq"
OWNED BY "price_items"."id";
SELECT setval('"price_items_id_seq"', 2094, true);
ALTER SEQUENCE "price_letters_id_seq"
OWNED BY "price_letters"."id";
SELECT setval('"price_letters_id_seq"', 2, true);
ALTER SEQUENCE "products_id_seq"
OWNED BY "products"."id";
SELECT setval('"products_id_seq"', 761, true);
ALTER SEQUENCE "referensi_items_id_seq"
OWNED BY "referensi_items"."id";
SELECT setval('"referensi_items_id_seq"', 2, true);
ALTER SEQUENCE "role_assignments_id_seq"
OWNED BY "role_assignments"."id";
SELECT setval('"role_assignments_id_seq"', 10, true);
ALTER SEQUENCE "roles_id_seq"
OWNED BY "roles"."id";
SELECT setval('"roles_id_seq"', 3, true);
ALTER SEQUENCE "types_id_seq"
OWNED BY "types"."id";
SELECT setval('"types_id_seq"', 787, true);
ALTER SEQUENCE "units_id_seq"
OWNED BY "units"."id";
SELECT setval('"units_id_seq"', 5, true);
ALTER SEQUENCE "user_activities_id_seq"
OWNED BY "user_activities"."id";
SELECT setval('"user_activities_id_seq"', 57, true);
ALTER SEQUENCE "users_id_seq"
OWNED BY "users"."id";
SELECT setval('"users_id_seq"', 8, true);
ALTER SEQUENCE "vendors_id_seq"
OWNED BY "vendors"."id";
SELECT setval('"vendors_id_seq"', 17, true);

-- ----------------------------
-- Primary Key structure for table ar_internal_metadata
-- ----------------------------
ALTER TABLE "ar_internal_metadata" ADD CONSTRAINT "ar_internal_metadata_pkey" PRIMARY KEY ("key");

-- ----------------------------
-- Primary Key structure for table brands
-- ----------------------------
ALTER TABLE "brands" ADD CONSTRAINT "brands_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table brochures
-- ----------------------------
CREATE INDEX "index_brochures_on_item_id" ON "brochures" USING btree (
  "item_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table brochures
-- ----------------------------
ALTER TABLE "brochures" ADD CONSTRAINT "brochures_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table countries
-- ----------------------------
ALTER TABLE "countries" ADD CONSTRAINT "countries_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table currencies
-- ----------------------------
ALTER TABLE "currencies" ADD CONSTRAINT "currencies_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table deliveries
-- ----------------------------
ALTER TABLE "deliveries" ADD CONSTRAINT "deliveries_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table delivery_items
-- ----------------------------
CREATE INDEX "index_delivery_items_on_delivery_id" ON "delivery_items" USING btree (
  "delivery_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_delivery_items_on_price_item_id" ON "delivery_items" USING btree (
  "price_item_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table delivery_items
-- ----------------------------
ALTER TABLE "delivery_items" ADD CONSTRAINT "delivery_items_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table detail_items
-- ----------------------------
CREATE INDEX "index_detail_items_on_item_id" ON "detail_items" USING btree (
  "item_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_detail_items_on_unit_id" ON "detail_items" USING btree (
  "unit_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table detail_items
-- ----------------------------
ALTER TABLE "detail_items" ADD CONSTRAINT "detail_items_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table disiplines
-- ----------------------------
ALTER TABLE "disiplines" ADD CONSTRAINT "disiplines_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table indonesia_cities
-- ----------------------------
ALTER TABLE "indonesia_cities" ADD CONSTRAINT "indonesia_cities_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table indonesia_districts
-- ----------------------------
ALTER TABLE "indonesia_districts" ADD CONSTRAINT "indonesia_districts_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table indonesia_provinces
-- ----------------------------
ALTER TABLE "indonesia_provinces" ADD CONSTRAINT "indonesia_provinces_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table indonesia_villages
-- ----------------------------
ALTER TABLE "indonesia_villages" ADD CONSTRAINT "indonesia_villages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table item_price_letters
-- ----------------------------
CREATE INDEX "index_item_price_letters_on_item_id" ON "item_price_letters" USING btree (
  "item_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_item_price_letters_on_price_item_id" ON "item_price_letters" USING btree (
  "price_item_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table item_price_letters
-- ----------------------------
ALTER TABLE "item_price_letters" ADD CONSTRAINT "item_price_letters_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table items
-- ----------------------------
CREATE INDEX "index_items_on_brand_id" ON "items" USING btree (
  "brand_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_items_on_disipline_id" ON "items" USING btree (
  "disipline_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_items_on_product_id" ON "items" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_items_on_type_id" ON "items" USING btree (
  "type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_items_on_vendor_id" ON "items" USING btree (
  "vendor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table items
-- ----------------------------
ALTER TABLE "items" ADD CONSTRAINT "items_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table price_items
-- ----------------------------
CREATE INDEX "index_price_items_on_country_id" ON "price_items" USING btree (
  "country_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_price_items_on_currency_id" ON "price_items" USING btree (
  "currency_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_price_items_on_item_id" ON "price_items" USING btree (
  "item_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_price_items_on_price_letter_id" ON "price_items" USING btree (
  "price_letter_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_price_items_on_referensi_item_id" ON "price_items" USING btree (
  "referensi_item_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_price_items_on_vendor_id" ON "price_items" USING btree (
  "vendor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table price_items
-- ----------------------------
ALTER TABLE "price_items" ADD CONSTRAINT "price_items_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table price_letters
-- ----------------------------
ALTER TABLE "price_letters" ADD CONSTRAINT "price_letters_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table products
-- ----------------------------
CREATE INDEX "index_products_on_disipline_id" ON "products" USING btree (
  "disipline_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table products
-- ----------------------------
ALTER TABLE "products" ADD CONSTRAINT "products_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table referensi_items
-- ----------------------------
ALTER TABLE "referensi_items" ADD CONSTRAINT "referensi_items_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table role_assignments
-- ----------------------------
CREATE INDEX "index_role_assignments_on_role_id" ON "role_assignments" USING btree (
  "role_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_role_assignments_on_user_id" ON "role_assignments" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table role_assignments
-- ----------------------------
ALTER TABLE "role_assignments" ADD CONSTRAINT "role_assignments_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE "roles" ADD CONSTRAINT "roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table schema_migrations
-- ----------------------------
ALTER TABLE "schema_migrations" ADD CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version");

-- ----------------------------
-- Indexes structure for table types
-- ----------------------------
CREATE INDEX "index_types_on_disipline_id" ON "types" USING btree (
  "disipline_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "index_types_on_product_id" ON "types" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table types
-- ----------------------------
ALTER TABLE "types" ADD CONSTRAINT "types_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table units
-- ----------------------------
ALTER TABLE "units" ADD CONSTRAINT "units_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user_activities
-- ----------------------------
ALTER TABLE "user_activities" ADD CONSTRAINT "user_activities_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE UNIQUE INDEX "index_users_on_email" ON "users" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" USING btree (
  "reset_password_token" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table vendors
-- ----------------------------
ALTER TABLE "vendors" ADD CONSTRAINT "vendors_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table brochures
-- ----------------------------
ALTER TABLE "brochures" ADD CONSTRAINT "fk_rails_722aedcac7" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table delivery_items
-- ----------------------------
ALTER TABLE "delivery_items" ADD CONSTRAINT "fk_rails_4f306db926" FOREIGN KEY ("price_item_id") REFERENCES "price_items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "delivery_items" ADD CONSTRAINT "fk_rails_abaa99d81a" FOREIGN KEY ("delivery_id") REFERENCES "deliveries" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table detail_items
-- ----------------------------
ALTER TABLE "detail_items" ADD CONSTRAINT "fk_rails_afb2026770" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "detail_items" ADD CONSTRAINT "fk_rails_cb01800a36" FOREIGN KEY ("unit_id") REFERENCES "units" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table indonesia_cities
-- ----------------------------
ALTER TABLE "indonesia_cities" ADD CONSTRAINT "indonesia_provinces" FOREIGN KEY ("province_id") REFERENCES "indonesia_provinces" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table indonesia_districts
-- ----------------------------
ALTER TABLE "indonesia_districts" ADD CONSTRAINT "indonesia_cities" FOREIGN KEY ("city_id") REFERENCES "indonesia_cities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table indonesia_villages
-- ----------------------------
ALTER TABLE "indonesia_villages" ADD CONSTRAINT "indonesia_districts" FOREIGN KEY ("district_id") REFERENCES "indonesia_districts" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table item_price_letters
-- ----------------------------
ALTER TABLE "item_price_letters" ADD CONSTRAINT "fk_rails_15571dff2c" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "item_price_letters" ADD CONSTRAINT "fk_rails_f504d909a0" FOREIGN KEY ("price_item_id") REFERENCES "price_items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table items
-- ----------------------------
ALTER TABLE "items" ADD CONSTRAINT "fk_rails_36708b3aa6" FOREIGN KEY ("brand_id") REFERENCES "brands" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "items" ADD CONSTRAINT "fk_rails_4dd0afa363" FOREIGN KEY ("type_id") REFERENCES "types" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "items" ADD CONSTRAINT "fk_rails_9a56345cfd" FOREIGN KEY ("product_id") REFERENCES "products" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "items" ADD CONSTRAINT "fk_rails_e1bcf5469c" FOREIGN KEY ("vendor_id") REFERENCES "vendors" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "items" ADD CONSTRAINT "fk_rails_f2b8a47448" FOREIGN KEY ("disipline_id") REFERENCES "disiplines" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table price_items
-- ----------------------------
ALTER TABLE "price_items" ADD CONSTRAINT "fk_rails_36f6f11f13" FOREIGN KEY ("currency_id") REFERENCES "currencies" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "price_items" ADD CONSTRAINT "fk_rails_44fae5c73e" FOREIGN KEY ("vendor_id") REFERENCES "vendors" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "price_items" ADD CONSTRAINT "fk_rails_55a7a838ec" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "price_items" ADD CONSTRAINT "fk_rails_70fc2b2b0a" FOREIGN KEY ("price_letter_id") REFERENCES "price_letters" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "price_items" ADD CONSTRAINT "fk_rails_c313faf245" FOREIGN KEY ("country_id") REFERENCES "countries" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "price_items" ADD CONSTRAINT "fk_rails_e9cbf8b751" FOREIGN KEY ("referensi_item_id") REFERENCES "referensi_items" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table products
-- ----------------------------
ALTER TABLE "products" ADD CONSTRAINT "fk_rails_210f8c2acf" FOREIGN KEY ("disipline_id") REFERENCES "disiplines" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table role_assignments
-- ----------------------------
ALTER TABLE "role_assignments" ADD CONSTRAINT "fk_rails_8ddd873ee0" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "role_assignments" ADD CONSTRAINT "fk_rails_e4bfc1cd2c" FOREIGN KEY ("role_id") REFERENCES "roles" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table types
-- ----------------------------
ALTER TABLE "types" ADD CONSTRAINT "fk_rails_6c397e30d4" FOREIGN KEY ("disipline_id") REFERENCES "disiplines" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "types" ADD CONSTRAINT "fk_rails_89ba8cdf2d" FOREIGN KEY ("product_id") REFERENCES "products" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table vendors
-- ----------------------------
ALTER TABLE "vendors" ADD CONSTRAINT "countries" FOREIGN KEY ("country_id") REFERENCES "countries" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
