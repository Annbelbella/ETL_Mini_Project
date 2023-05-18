-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" Varchar(100)   NOT NULL,
    "description" Varchar(250)   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(50)   NOT NULL,
	"currency" varchar(50)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(50)   NOT NULL,
    "subcategory_id" varchar(50)   NOT NULL
);

CREATE TABLE "Category" (
    "category_id" varchar(50)   NOT NULL,
    "category" varchar(50)   NOT NULL
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "email" varchar(50)   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(50)   NOT NULL,
    "subcategory" varchar(50)   NOT NULL
);

-- Adding Primary Keys

ALTER TABLE "Campaign" ADD CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id");
	
ALTER TABLE "Category" ADD CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id");
		
ALTER TABLE "Subcategory" ADD CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id");


-- Adding Foreign keys

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");


--  Query * FROM Each Table to Confirm Data

SELECT * FROM public."Campaign";
	
SELECT * FROM public."Category";

SELECT * FROM public."Category";
	
SELECT * FROM public."Contacts";
	
SELECT * FROM public."Subcategory";
