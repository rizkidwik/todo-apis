import Todos from "../model/TodoModel.js";
import jwt from "jsonwebtoken";
import Users from "../model/UserModel.js";
export const getTodos = async(req,res)=>{
    let limit=Number(req.query.limit);
    try {
        const todos = await Todos.findAll({
            attributes:['id','todo','completed','createdAt','updatedAt'],
            limit:limit
        });
        res.json({
            msg:"Data berhasil diambil",
            todos:todos,
            limit:limit
        });
    } catch (error) {
        console.log(error);
    }
}

export const addTodo = async(req,res)=>{
    const todo= req.body.todo;
    const completed = req.body.completed;
    if(!todo || !completed) return res.status(400).json({
        msg: "Field wajib diisi"
    })
    // return res.json({todo,completed});
    const refreshToken = req.cookies.refreshToken;
    if(!refreshToken) return res.sendStatus(204);
    const user = await Users.findAll({
        where:{
            refresh_token:refreshToken
        }
    });
    if(!user[0]) return res.sendStatus(204);
    const userId = user[0].id;
    try {
        const data =  await Todos.create({
            todo:todo,
            completed:completed,
            userId:userId
        })
        res.json({
            msg: "Data berhasil ditambahkan",
            data: data
        });
    } catch (error) {
        console.log(error)
        return res.sendStatus(401).json({msg:"Data gagal ditambahkan"});
    }
}

export const updateTodo = async(req,res)=>{
    const {todo,completed} = req.body;
    if(!todo || !completed) return res.sendStatus(400).json({msg: "Field wajib diisi"});
    try {
        await Todos.update({
            todo:todo,
            completed:completed,
        },
        {
            where: {
                id:req.params.id,
            }
        },
        {
            timestamps:true,
            updatedAt: 'updateTimestamp'
        });
        return res.json({
            msg: "Data berhasil diupdate",
        });
    } catch (error) {
        console.log(error);
    }
}

export const deleteTodo = async(req,res)=>{
    try {
        await Todos.destroy({
            where: {
                id:req.params.id
            }
        });
        return res.json({msg: "Data terhapus"})
    } catch (error) {
        console.log(error);
    }
}