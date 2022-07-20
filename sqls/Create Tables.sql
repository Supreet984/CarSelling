BEGIN;
--
-- Create model Car
--
CREATE TABLE "app_car" ("id" serial NOT NULL PRIMARY KEY, "car_title" varchar(255) NOT NULL, "state" varchar(100) NOT NULL, "city" varchar(100) NOT NULL, "color" varchar(100) NOT NULL, "model" varchar(100) NOT NULL, "year" integer NOT NULL, "condition" varchar(100) NOT NULL, "price" integer NOT NULL, "description" text NOT NULL, "car_photo" varchar(100) NOT NULL, "car_photo1" varchar(100) NOT NULL, "car_photo2" varchar(100) NOT NULL, "car_photo3" varchar(100) NOT NULL, "car_photo4" varchar(100) NOT NULL, "features" varchar(195) NOT NULL, "body_style" varchar(100) NOT NULL, "engine" varchar(100) NOT NULL, "transmission" varchar(100) NOT NULL, "interior" varchar(100) NOT NULL, "miles" integer NOT NULL, "doors" varchar(10) NOT NULL, "passengers" integer NOT NULL, "vin_no" varchar(100) NOT NULL, "milage" integer NOT NULL, "fuel_type" varchar(50) NOT NULL, "no_of_owners" varchar(100) NOT NULL, "is_featured" boolean NOT NULL, "created_date" timestamp with time zone NOT NULL);
--
-- Create model Contact
--
CREATE TABLE "app_contact" ("id" serial NOT NULL PRIMARY KEY, "first_name" varchar(100) NOT NULL, "last_name" varchar(100) NOT NULL, "car_id" integer NOT NULL, "customer_need" varchar(100) NOT NULL, "car_title" varchar(100) NOT NULL, "city" varchar(100) NOT NULL, "state" varchar(100) NOT NULL, "email" varchar(100) NOT NULL, "phone" varchar(100) NOT NULL, "message" text NOT NULL, "user_id" integer NOT NULL, "create_date" timestamp with time zone NOT NULL);
--
-- Create model Team
--
CREATE TABLE "app_team" ("id" serial NOT NULL PRIMARY KEY, "first_name" varchar(300) NOT NULL, "last_name" varchar(255) NOT NULL, "designation" varchar(255) NOT NULL, "photo" varchar(100) NOT NULL, "facebook_link" varchar(255) NOT NULL, "twitter_link" varchar(255) NOT NULL, "google_plus_link" varchar(255) NOT NULL, "created_date" timestamp with time zone NOT NULL);

--
-- Alter field id on car
--
ALTER TABLE "app_car" ALTER COLUMN "id" TYPE bigint USING "id"::bigint;
DROP SEQUENCE IF EXISTS "app_car_id_seq" CASCADE;
CREATE SEQUENCE "app_car_id_seq";
ALTER TABLE "app_car" ALTER COLUMN "id" SET DEFAULT nextval('"app_car_id_seq"');
SELECT setval('"app_car_id_seq"', MAX("id")) FROM "app_car";
ALTER SEQUENCE "app_car_id_seq" OWNED BY "app_car"."id";
--
-- Alter field id on contact
--
ALTER TABLE "app_contact" ALTER COLUMN "id" TYPE bigint USING "id"::bigint;
DROP SEQUENCE IF EXISTS "app_contact_id_seq" CASCADE;
CREATE SEQUENCE "app_contact_id_seq";
ALTER TABLE "app_contact" ALTER COLUMN "id" SET DEFAULT nextval('"app_contact_id_seq"');
SELECT setval('"app_contact_id_seq"', MAX("id")) FROM "app_contact";
ALTER SEQUENCE "app_contact_id_seq" OWNED BY "app_contact"."id";
--
-- Alter field id on team
--
ALTER TABLE "app_team" ALTER COLUMN "id" TYPE bigint USING "id"::bigint;
DROP SEQUENCE IF EXISTS "app_team_id_seq" CASCADE;
CREATE SEQUENCE "app_team_id_seq";
ALTER TABLE "app_team" ALTER COLUMN "id" SET DEFAULT nextval('"app_team_id_seq"');
SELECT setval('"app_team_id_seq"', MAX("id")) FROM "app_team";
ALTER SEQUENCE "app_team_id_seq" OWNED BY "app_team"."id";
COMMIT;