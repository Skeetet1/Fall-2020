


const data = [{name: 'Tevin', age: 23}, {name:'Ayman',age:20}]

function getAll(){
  return data;

}

  function add(name, age){
    data.push({name,age});
  } 


  module.exports ={ getAll,add, search: q=> data.filter(x=> x.name ==q)}
