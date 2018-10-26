var numeros = [10,5,8,4,5,2,7,8,9];
var rnd = Math.floor((Math.random() * 10) + 1);

numeros.sort(function(a){
   rnd = Math.floor((Math.random() * 10) + 1);
  if(a>rnd){
return a;
  }
});
console.log(numeros);


var nombres = [
  "Pedro Sanchez",
  "Julian Pedrin",
  "Benito Camela",
  "Yanise queponer",
  "Juan Fernández"
]

for(var index in nombres){
  let a = nombres[index].split(" ");
  nombres[index]=a[1]+" "+a[0];
}

nombres.sort();

for(var index in nombres){
  let a = nombres[index].split(" ");
  nombres[index]=a[1]+" "+a[0];
}

console.log(nombres)
