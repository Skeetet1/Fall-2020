const mysql = require('./mysql');

//must add more workouts
const Workout_Types = { CLEANS: 'cleans', HAMMER_THROW: 'hammerthrow', PUSHUPS: 'pushups' };


async function getAll(){
    console.log("Called Get All")
    const sql = `SELECT P.*, FirstName, LastName FROM Workouts P Join Users U ON P.Owner_id = U.id`
    return await mysql.query(sql);
}

async function get(id){
    const sql = `SELECT 
        *
    FROM Workouts WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    if(!rows.length) throw { status: 404, message: "Sorry, there is no such Workout" };
    return rows[0];
}

async function getTypes(){
    return await mysql.query(`SELECT id, Name FROM Types WHERE Type_id = 3`);
}

async function add(Workout_Day,Workout_Location,Workout_Type,Workout_Duration,Workout_Intensity_Level,Owner_id){
    const sql = `INSERT INTO Workouts (created_at, Workout_Day,Workout_Location,Workout_Type,Workout_Duration,Workout_Intensity_Level,Owner_id) VALUES ? ;`;
    const params = [[new Date(), Workout_Day,Workout_Location,Workout_Type,Workout_Duration,Workout_Intensity_Level, Owner_id]];
    const res = await mysql.query(sql, [params]);
    return get(res.insertId);
}

async function update( Owner_id){
    const sql = `UPDATE Workouts SET ? WHERE id = ?;`;
    const params = { Workout_Day,Workout_Location,Workout_Type,Workout_Duration,Workout_Intensity_Level,Owner_id };
    const res = await mysql.query(sql, [params]);
    return get(res.insertId);
}

async function remove(id){
    const sql = `DELETE FROM Workouts WHERE id = ?`;
    return await mysql.query(sql, [id]);
}

const search = async q => await mysql.query(`SELECT id, Value FROM Workouts WHERE Value LIKE ?; `, [`%${q}%`]);
module.exports = { getAll, get, add, update, remove, getTypes, search,Workout_Types  }