
--Create animals table
CREATE TABLE "animals" (
	"id"	INTEGER NOT NULL UNIQUE,
	"species"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"age"	INTEGER NOT NULL,
	"favoriteFood"	TEXT NOT NULL,
    "wasFed"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);

--Insert animals
INSERT INTO "animals" 

( name , species , age , favoriteFood , wasFed )

VALUES 

("Spike" , "Tiger" , 23 , "Mango" , 0),
("Mike" , "Lion" , 18 , "Melon" , 1),
("Joe" , "Monkey" , 7 , "Banana" , 1),
("Bob" , "Parrot" , 10 , "Seeds" , 0),
("Stew" , "Bear" , 15 , "Fish" , 1)


--Remove one of the animals
DELETE FROM "animals" WHERE "name" = "Bob";

--Update wasFed to 1 for one of the animals
UPDATE "animals" SET "wasFed" = 1 WHERE "name" = "Spike";

--Delete favoriteFodd column
ALTER TABLE "animals" DROP COLUMN "favoriteFood";

--Add a new "origin" column
ALTER TABLE "animals" ADD COLUMN "origin" TEXT;

--Added origin to the animals
UPDATE "animals" SET "origin" = "Africa" WHERE "species" = "Lion";
UPDATE "animals" SET "origin" = "Asia" WHERE "species" = "Tiger";
UPDATE "animals" SET "origin" = "South America" WHERE "species" = "Bear";
UPDATE "animals" SET "origin" = "South America" WHERE "species" = "Parrot";
UPDATE "animals" SET "origin" = "Africa" WHERE "species" = "Monkey";

--Feed all animals
UPDATE "animals" SET "wasFed" = 1;