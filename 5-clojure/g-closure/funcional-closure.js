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

//build node funcional-closure.js