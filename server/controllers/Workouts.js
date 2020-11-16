const express = require('express');
const workouts = require('../models/Workouts');
const comments = require('../models/Comments');
const reactions = require('../models/reactions');

const router = express.Router();

router
    .get('/', (req, res, next) => {
        workouts.getAll().then(x=> res.send( x ) ) 
        .catch(next);
    })
    .get('/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        workouts.get(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/:id/comments', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        comments.getForPost(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/:id/reactions', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        reactions.getForPost(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/types', (req, res, next) => {
        workouts.getTypes().then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/search', (req, res, next) => {
        posts.search(req.query.q).then(x=> res.send( x ) )
        .catch(next);
    })
    .post('/', (req, res, next) => {
        workouts.add(
          req.body.Workout_Day,
          req.body.Workout_Location,
          req.body.Workout_Type, 
          req.body.Workout_Duration ,
          req.body.Workout_Intendity_Level , 
          req.body.Owner_id, 
        ).then(newUser => {
            res.send( newUser );
        }).catch(next)
    })
   .put('/:id', (req, res, next) => {
        workouts.update( req.params.id,
            req.body.Workout_Day,
            req.body.Workout_Location,
            req.body.Workout_Type, 
            req.body.Workout_Duration ,
            req.body.Workout_Intendity_Level , 
            req.body.Owner_id, 
        ).then(newUser => {
            res.send( newUser );
        }).catch(next)
    })
    .delete('/:id', (req, res, next) => {
        workouts.remove(req.params.id).then(msg => {
            res.send( msg );
        }).catch(next)
    })
module.exports = router;