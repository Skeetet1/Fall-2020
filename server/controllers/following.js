const express = require('express');
const following = require('../models/following');

const router = express.Router();

router
    .get('/', (req, res, next) => {
        following.getAll().then(x=> res.send( x.map(user=> ({ ...following, Password: undefined}) ) ) )
        .catch(next);
    })
    .get('/:id', (req, res, next) => {
        const id = +req.params.id;
        if(!id) return next();
        following.get(id).then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/types', (req, res, next) => {
        following.getTypes().then(x=> res.send( x ) )
        .catch(next);
    })
    .get('/search', (req, res, next) => {
        following.search(req.query.q).then(x=> res.send( x ) )
        .catch(next);
    })
    .post('/', (req, res, next) => {
        following.add(
            req.body.User_id,
            req.body.Following_id,  
            following.Types.USER, 
        ).then(newUser => {
            res.send( newUser );
        }).catch(next)
    })
   .put('/:id', (req, res, next) => {
      following.update( req.params.id,
            req.body.User_id,
            req.body.Following_id, 
            following.Types.USER, 
        ).then(newUser => {
            res.send( newUser );
        }).catch(next)
    })
    .delete('/:id', (req, res, next) => {
        following.remove(req.params.id).then(msg => {
            res.send( msg );
        }).catch(next)
    })
module.exports = router;