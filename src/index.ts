import { AppDataSource } from "./data-source";

AppDataSource.initialize()
  .then(async () => {
    const result = await AppDataSource.createQueryBuilder()
      .select(["p.id", "p.fullName", "u.username"])
      .from("persons", "p")
      .leftJoin("users", "u", "u.id = p.id")
      .orderBy({ "p.fullName": "DESC" }) // Error
      //   .orderBy('p.fullName') // Error
      //   .orderBy('fullName') // Works
      .getRawMany();

    console.log(result);
  })
  .catch((error) => console.log(error));
