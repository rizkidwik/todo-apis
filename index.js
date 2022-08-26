import express from "express";
import dotenv from "dotenv";
import cookieParser from "cookie-parser";
import cors from "cors";
import db from "./config/Database.js";
import router from "./routes/index.js";
dotenv.config();
const app = express();
const port = process.env.PORT;
app.use(cors({
    credentials:true,
    origin:'http://localhost:3000'
}));
app.use(cookieParser());
app.use(express.json());
app.use(router);

app.listen(port,()=> {
    console.log(`Server runninf at port ${port}`)
      // console.log(`listening to http://localhost:${port}`)
});