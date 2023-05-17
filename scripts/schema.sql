DROP TABLE IF EXISTS "persons";
CREATE TABLE "persons" (
  "id" int NOT NULL AUTO_INCREMENT,
  "fullName" varchar(255) NOT NULL,
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
  "id" int NOT NULL AUTO_INCREMENT,
  "username" varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  "email" varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  "personId" int DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "users_FK" ("personId"),
  CONSTRAINT "users_FK" FOREIGN KEY ("personId") REFERENCES "persons" ("id")
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;