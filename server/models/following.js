const mysql = require('./mysql');

async function getAll(){
    console.log("Called Get All")
    const sql = `SELECT P.*, FirstName, LastName FROM Comments P Join Users U ON P.User_id = U.id`
    return await mysql.query(sql);
}

async function getForWorkouts(Workout_id){
    const sql = `SELECT P.*, FirstName, LastName FROM Comments P Join Users U ON P.User_id = U.id WHERE P.Workout_id = ?`
    return await mysql.query(sql, [Workout_id]);
}

async function get(id){
    const sql = `SELECT 
        *
    FROM User_following WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    if(!rows.length) throw { status: 404, message: "Sorry, there is no such following" };
    return rows[0];
}

async function add(User_id, following_id){
    const sql = `INSERT INTO Comments (created_at, User_id, following_id) VALUES ? ;`;
    const params = [[new Date(), Text, User_id, following_id]];
    const res = await mysql.query(sql, [params]);
    return get(res.insertId);
}

async function update(id, Text, User_id, following_id){
    const sql = `UPDATE Comments SET ? WHERE id = ?;`;
    const params = { Text, User_id, following_id };
    const res = await mysql.query(sql, [params, id]);
    return get(res.insertId);
}

async function remove(id){
    const sql = `DELETE FROM Comments WHERE id = ?`;
    return await mysql.query(sql, [id]);
}

const search = async q => await mysql.query(`SELECT id, Text, Workout_id FROM Comments WHERE Text LIKE ? ; `, [`%${q}%`]);

module.exports = { getAll, get, add, update, remove, search, getForWorkouts }