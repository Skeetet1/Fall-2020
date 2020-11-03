


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


  module.exports ={ getAll,add, search: async q=> data.filter(x=> x.name ==q)}
