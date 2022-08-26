import { Sequelize  } from "sequelize";
import db from "../config/Database.js"

const { DataTypes } = Sequelize;

const Todos = db.define('todos',{
    todo: {
        type: DataTypes.TEXT
    },
    completed: {
        type: DataTypes.BOOLEAN
    },
    userId: {
        type: DataTypes.INTEGER
    }
},{
    freezeTableName:true
});

export default Todos;

