


const data = [{name: 'Tevin', age: 23}, {name:'Ayman',age:20}]

 async function getAll(){
   //throw { status: 501, message: " fake message "}
  // await Promise.resolve()
  console.log("Called Get All")
  return data;

}

 async function add(name, age){
    data.push({name,age});

  } 

  async function rand(){
    var someVal = 0
        for (let index = 0; index < 999 * 999; index++){
          someVal = index * Math.random();
        }
        if(someVal < 999 * 999 * .5){
          throw { status: 501, message: " fake message "}
        }
        
         return someVal ;
      }
    

  module.exports ={rand,getAll,add, search: async q=> data.filter(x=> x.name ==q)}

