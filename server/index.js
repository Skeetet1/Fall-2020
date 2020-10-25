const express = require('express')

const users= require('./controllers/users');

const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello Hudson Valley! You requested ' + req.url)
})

app.use('/users',users);

app.use((err,req,res,next)=>{
  console.log(err);
  res.status(err.status || 500).sen({message:err.message})
} )

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})