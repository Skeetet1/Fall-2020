const express = require('express');
const  users  = require('../models/Users');

const router = express.Router();
router
// add friend
.post('/add', (req, res) => {
    users.Add_Friend(req.body.user1, req.body.user2);
    res.send({success: true});       
})

// delete friend
.post('/delete', (req, res) => {
    users.Delete_Friend(req.body.user1, req.body.user2);
    res.send({success: true}); 
});

module.exports = router;