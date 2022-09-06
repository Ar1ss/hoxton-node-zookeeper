


CREATE TABLE "animals" (
	"id"	INTEGER NOT NULL UNIQUE,
	"species"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"age"	INTEGER NOT NULL,
	"favoriteFood"	TEXT NOT NULL,
    "wasFed"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);


INSERT INTO "animals" 

( name , species , age , favoriteFood , wasFed )

VALUES 

("Spike" , "Tiger" , 23 , "Mango" , 0),
("Mike" , "Lion" , 18 , "Melon" , 1),
("Joe" , "Monkey" , 7 , "Banana" , 1),
("Bob" , "Parrot" , 10 , "Seeds" , 0),
("Stew" , "Bear" , 15 , "Fish" , 1)


DELETE FROM "animals" WHERE "name" = "Bob";


UPDATE "animals" SET "wasFed" = 1 WHERE "name" = "Spike";


ALTER TABLE "animals" DROP COLUMN "favoriteFood";


ALTER TABLE "animals" ADD COLUMN "origin" TEXT;


UPDATE "animals" SET "origin" = "Africa" WHERE "species" = "Lion";
UPDATE "animals" SET "origin" = "Asia" WHERE "species" = "Tiger";
UPDATE "animals" SET "origin" = "South America" WHERE "species" = "Bear";
UPDATE "animals" SET "origin" = "South America" WHERE "species" = "Parrot";
UPDATE "animals" SET "origin" = "Africa" WHERE "species" = "Monkey";


UPDATE "animals" SET "wasFed" = 1;