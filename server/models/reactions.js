const mysql = require('./mysql');

const Emojis = { LOVE: '❤️' }

async function getAll(){
    console.log("Called Get All")
    const sql = `SELECT P.*, FirstName, LastName FROM Reactions P Join Users U ON P.Owner_id = U.id`
    return await mysql.query(sql);
}

async function getForWorkout(Workout_id){
    const sql = `SELECT P.*, FirstName, LastName FROM Reactions P Join Users U ON P.Owner_id = U.id WHERE P.Workout_id = ?`
    return await mysql.query(sql, [Workout_id]);
}

async function get(id){
    const sql = `SELECT 
        *
    FROM Reactions WHERE id=?`;
    const rows = await mysql.query(sql, [id]);
    if(!rows.length) throw { status: 404, message: "Sorry, there is no such comment" };
    return rows[0];
}

async function add( Emoji = Emojis.LOVE, Workout_id, Owner_id){
    const sql = `INSERT INTO Reactions (created_at, Emoji, Workout_id, Owner_id) VALUES ? ;`;
    const params = [[new Date(), Emoji, Workout_id, Owner_id]];
    const res = await mysql.query(sql, [params]);
    return get(res.insertId);
}

async function update(id, Emoji, Workout_id, Owner_id){
    const sql = `UPDATE Reactions SET ? WHERE id = ?;`;
    const params = { Emoji, Workout_id, Owner_id };
    const res = await mysql.query(sql, [params, id]);
    return get(res.insertId);
}

async function remove(id){
    const sql = `DELETE FROM Reactions WHERE id = ?`;
    return await mysql.query(sql, [id]);
}

const search = async q => await mysql.query(`SELECT id, Text, Workout_id FROM Reactions WHERE Text LIKE ? ; `, [`%${q}%`]);

module.exports = { getAll, get, add, update, remove, search, getForWorkout }