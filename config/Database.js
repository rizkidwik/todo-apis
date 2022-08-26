import { Sequelize } from "sequelize";

const db = new Sequelize('api_todo','root','',{
    host : process.env.DB_HOST,
    dialect: 'mysql'
});

export default db;