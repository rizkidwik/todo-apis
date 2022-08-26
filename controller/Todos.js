import Todos from "../model/TodoModel.js";


export const getTodos = async(req,res)=>{
    try {
        const todos = await Todos.findAll({
            attributes:['id','todo','completed','createdAt','updatedAt']
        });
        res.json(todos);
    } catch (error) {
        console.log(error);
    }
}

export const addTodo = async(req,res)=>{
    // const {todo,completed,}
}