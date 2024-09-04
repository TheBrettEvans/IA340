CREATE TABLE IF NOT EXISTS "Name" (
	"fips" bigint NOT NULL,
	"name" varchar(100) NOT NULL UNIQUE,
	PRIMARY KEY ("fips")
);

CREATE TABLE IF NOT EXISTS "income" (
	"fips" varchar(4) NOT NULL,
	"income" bigint NOT NULL,
	"year" bigint NOT NULL,
	PRIMARY KEY ("fips", "year")
);

CREATE TABLE IF NOT EXISTS "Population" (
	"fips" varchar(255) NOT NULL,
	"pop" bigint NOT NULL,
	"year" bigint NOT NULL,
	PRIMARY KEY ("fips")
);


ALTER TABLE "income" ADD CONSTRAINT "income_fk0" FOREIGN KEY ("fips") REFERENCES "Name"("fips");
ALTER TABLE "Population" ADD CONSTRAINT "Population_fk0" FOREIGN KEY ("fips") REFERENCES "Name"("fips");
