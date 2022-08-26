import express from "express";
import {getUsers,Register,Login,Logout } from "../controller/Users.js";
import {getTodos,addTodo,updateTodo,deleteTodo} from "../controller/Todos.js"
import {verifyToken } from "../middleware/VerifyToken.js";
import {refreshToken} from "../controller/RefreshToken.js";

const router = express.Router();

router.get('/users',verifyToken,getUsers);
router.post('/users',Register);
router.post('/login',Login);
router.get('/token', refreshToken);
router.delete('/logout',Logout);
router.get('/todos',getTodos);
router.post('/todos',addTodo);
router.put('/todos/:id',updateTodo);
router.delete('/todos/:id',deleteTodo);
export default router;