-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "victims" (
    "case_id" int   NOT NULL,
    "party_number" int   NOT NULL,
    "victim_number" int   NOT NULL,
    "victim_role" int   NOT NULL,
    "victim_sex" string   NOT NULL,
    "victim_age" int   NOT NULL,
    "victim_degree_of_injury" int   NOT NULL,
    "victim_seating_postion" string   NOT NULL,
    "victim_safety_equip_1" string   NOT NULL,
    "victim_safety_equip_2" string   NOT NULL,
    "victim_ejected" string   NOT NULL,
    "county" string   NOT NULL,
    "city" string   NOT NULL,
    "accident_year" int   NOT NULL,
    "safety_equip_used" string   NOT NULL,
    "severe_injury" int   NOT NULL,
    "party_id" int   NOT NULL
);

CREATE TABLE "parties" (
    "party_id" int   NOT NULL,
    "case_id" int   NOT NULL,
    "party_number" int   NOT NULL,
    "party_type" string   NOT NULL,
    "at_fault" string   NOT NULL,
    "party_sex" string   NOT NULL,
    "party_age" int   NOT NULL,
    "party_soberiety" string   NOT NULL,
    "dir_of_travel" string   NOT NULL,
    "party_safety_equip_1" string   NOT NULL,
    "party_safety_equip_2" string   NOT NULL,
    "oaf_1" string   NOT NULL,
    "party_number_killed" int   NOT NULL,
    "party_number_injured" int   NOT NULL,
    "move_pre_acc" string   NOT NULL,
    "vehicle_year" int   NOT NULL,
    "vehicle_make" string   NOT NULL,
    "stwd_vehicle_type" string   NOT NULL,
    "race" string   NOT NULL,
    "accident_year" int   NOT NULL,
    "safety_equip_used" string   NOT NULL,
    CONSTRAINT "pk_parties" PRIMARY KEY (
        "party_id"
     )
);

CREATE TABLE "crashes" (
    "case_id" int   NOT NULL,
    "accident_year" int   NOT NULL,
    "collision_date" date   NOT NULL,
    "collision_time" time   NOT NULL,
    "day_of_week" int   NOT NULL,
    "weather_1" string   NOT NULL,
    "tow_away" string   NOT NULL,
    "collision_severity" int   NOT NULL,
    "number_killed" int   NOT NULL,
    "number_injured" int   NOT NULL,
    "party_count" int   NOT NULL,
    "primary_coll_factor" string   NOT NULL,
    "pcf_viol_category" string   NOT NULL,
    "hit_and_run" string,   NOT NULL,
    "type_of_collision" string   NOT NULL,
    "mviw" string   NOT NULL,
    "road_surface" string   NOT NULL,
    "road_cond_1" string   NOT NULL,
    "lighting" string   NOT NULL,
    "control_device" string   NOT NULL,
    "pedestrian_accident" int   NOT NULL,
    "bicycle_accident" int   NOT NULL,
    "motorcycle_accident" int   NOT NULL,
    "truck_accident" int   NOT NULL,
    "not_private_property" string   NOT NULL,
    "alcohol_involved" int   NOT NULL,
    "stwd_vehtype_at_fault" string   NOT NULL,
    "count_severe_inj" int   NOT NULL,
    "count_visible_inj" int   NOT NULL,
    "count_complaint_pain" int   NOT NULL,
    "count_ped_killed" int   NOT NULL,
    "count_ped_injury" int   NOT NULL,
    "count_bicyclist_killed" int   NOT NULL,
    "count_bicyclist_injured" int   NOT NULL,
    "count_mc_killed" int   NOT NULL,
    "count_mc_injured" int   NOT NULL,
    "point_x" float   NOT NULL,
    "point_y" float   NOT NULL,
    CONSTRAINT "pk_crashes" PRIMARY KEY (
        "case_id"
     )
);

ALTER TABLE "victims" ADD CONSTRAINT "fk_victims_case_id" FOREIGN KEY("case_id")
REFERENCES "crashes" ("case_id");

ALTER TABLE "victims" ADD CONSTRAINT "fk_victims_party_id" FOREIGN KEY("party_id")
REFERENCES "parties" ("party_id");

ALTER TABLE "parties" ADD CONSTRAINT "fk_parties_case_id" FOREIGN KEY("case_id")
REFERENCES "crashes" ("case_id");

