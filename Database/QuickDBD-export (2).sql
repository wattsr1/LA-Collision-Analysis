-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "VICTIMS" (
    "CASE_ID" int   NOT NULL,
    "PARTY_NUMBER" int   NOT NULL,
    "VICTIM_NUMBER" int   NOT NULL,
    "VICTIM_ROLE" int   NOT NULL,
    "VICTIM_SEX" varchar   NOT NULL,
    "VICTIM_AGE" int   NOT NULL,
    "VICTIM_DEGREE_OF_INJURY" int   NOT NULL,
    "VICTIM_SEATING_POSITION" varchar   NOT NULL,
    "VICTIM_SAFETY_EQUIP_1" varchar   NOT NULL,
    "VICTIM_SAFETY_EQUIP_2" varchar   NOT NULL,
    "VICTIM_EJECTED" varchar   NOT NULL,
    "COUNTY" varchar   NOT NULL,
    "CITY" varchar   NOT NULL,
    "ACCIDENT_YEAR" int   NOT NULL
);

CREATE TABLE "PARTIES" (
    "CASE_ID" int   NOT NULL,
    "PARTY_NUMBER" int   NOT NULL,
    "PARTY_TYPE" varchar   NOT NULL,
    "AT_FAULT" varchar   NOT NULL,
    "PARTY_SEX" varchar   NOT NULL,
    "PARTY_AGE" int   NOT NULL,
    "PARTY_SOBRIETY" varchar   NOT NULL,
    "DIR_OF_TRAVEL" varchar   NOT NULL,
    "PARTY_SAFETY_EQUIP_1" varchar   NOT NULL,
    "PARTY_SAFETY_EQUIP_2" varchar   NOT NULL,
    "PARTY_NUMBER_KILLED" int   NOT NULL,
    "PARTY_NUMBER_INJURED" int   NOT NULL,
    "MOVE_PRE_ACC" varchar   NOT NULL,
    "VEHICLE_YEAR" int   NOT NULL,
    "VEHICLE_MAKE" varchar   NOT NULL,
    "STWD_VEHICLE_TYPE" varchar   NOT NULL,
    "RACE" varchar   NOT NULL,
    "ACCIDENT_YEAR" int   NOT NULL
);

CREATE TABLE "CRASHES" (
    "CASE_ID" int   NOT NULL,
    "ACCIDENT_YEAR" int   NOT NULL,
    "COLLISION_TIME" int   NOT NULL,
    "DAY_OF_WEEK" int   NOT NULL,
    "WEATHER_1" varchar   NOT NULL,
    "TOW_AWAY" varchar   NOT NULL,
    "COLLISION_SEVERITY" int   NOT NULL,
    "NUMBER_KILLED" int   NOT NULL,
    "NUMBER_INJURED" int   NOT NULL,
    "PARTY_COUNT" int   NOT NULL,
    "PRIMARY_COLL_FACTOR" varchar   NOT NULL,
    "PCF_VIOL_CATEGORY" varchar   NOT NULL,
    "HIT_AND_RUN" varchar   NOT NULL,
    "TYPE_OF_COLLISION" varchar   NOT NULL,
    "MVIW" varchar   NOT NULL,
    "ROAD_SURFACE" varchar   NOT NULL,
    "ROAD_COND_1" varchar   NOT NULL,
    "LIGHTING" varchar   NOT NULL,
    "CONTROL_DEVICE" varchar   NOT NULL,
    "PEDESTRIAN_ACCIDENT" int   NOT NULL,
    "BICYCLE_ACCIDENT" int   NOT NULL,
    "MOTORCYCLE_ACCIDENT" int   NOT NULL,
    "TRUCK_ACCIDENT" int   NOT NULL,
    "NOT_PRIVATE_PROPERTY" varchar   NOT NULL,
    "ALCOHOL_INVOLVED" int   NOT NULL,
    "STWD_VEHTYPE_AT_FAULT" varchar   NOT NULL,
    "COUNT_SEVERE_INJ" int   NOT NULL,
    "COUNT_VISIBLE_INJ" int   NOT NULL,
    "COUNT_COMPLAINT_PAIN" int   NOT NULL,
    "COUNT_PED_KILLED" int   NOT NULL,
    "COUNT_PED_INJURED" int   NOT NULL,
    "COUNT_BICYCLIST_KILLED" int   NOT NULL,
    "COUNT_BICYCLIST_INJURED" int   NOT NULL,
    "COUNT_MC_KILLED" int   NOT NULL,
    "COUNT_MC_INJURED" int   NOT NULL,
    "POINT_X" float   NOT NULL,
    "POINT_Y" float   NOT NULL,
    CONSTRAINT "pk_CRASHES" PRIMARY KEY (
        "CASE_ID"
     )
);

ALTER TABLE "VICTIMS" ADD CONSTRAINT "fk_VICTIMS_CASE_ID" FOREIGN KEY("CASE_ID")
REFERENCES "PARTIES" ("CASE_ID");

ALTER TABLE "PARTIES" ADD CONSTRAINT "fk_PARTIES_CASE_ID" FOREIGN KEY("CASE_ID")
REFERENCES "CRASHES" ("CASE_ID");

