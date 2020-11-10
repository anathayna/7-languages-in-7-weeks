console.log("------ funcional closure ------"); 

function pessoa(nome) { 
	var nome = nome; 
	return function (sobrenome) { 
		return nome + " " + sobrenome;
	};
} 

let serumano = pessoa("panaka"); 
console.log(serumano("da silva")); 

console.log("\n------ contador ------"); 

function contador(){
    var total = 0;
    return function (soma) {
      if (isNaN(soma)) {
        total += 1;
      } else {
        total += soma;
      }
      return total;
    }
}
  
  c = contador()
  console.log(c(1));
  console.log(c(1)); 
  console.log(c(2));

//build node funcional-closure.js
