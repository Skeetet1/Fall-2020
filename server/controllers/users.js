
const express = require('express');
const users = require('../models/users');
const router = express.Router();

router.get('/',async (req, res, next) =>{
  users.getAll().then(x=> res.send (x))
  .catch(next);
 
})

.get('/search',(req, res, next) =>{
users.search(req.query).then(x=> res.send(x) )
.catch(next); 
})
.post('/',(req, res,next) => {
  users.add(req.query.name, req.query.age).then(newUser =>{
      res.send(newUser);
  }).catch(next)

})

.get('/rand', (req,res, next) => {
  users.rand()
  .then(someVal => res.send({someVal}))
  .catch(next);
})

module.exports = router;