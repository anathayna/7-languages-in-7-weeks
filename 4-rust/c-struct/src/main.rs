use std::convert::From;

struct Coordenada {
    x: f32,
    y: f32,
}

struct Campus {
    nome: String,
    coordenada: Coordenada, // struct em outra struct
}

// alias - apelidos de tipos
type Segundo = u32; 
type _Hora = u32; 

fn main() {
    let cas_xy = Coordenada {x: -23.6190872, y: -46.6703841};
    let cas = Campus {nome: String::from("santo amaro"), coordenada: cas_xy};

    println!("SENAC {0} está em ({1},{2})", cas.nome, cas.coordenada.x, cas.coordenada.y);

    let segundos: Segundo = 1000;
    println!("segundos: {}", segundos)
}
