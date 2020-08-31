fn main() {
    println!("\n\t ---- tipos primitivos -----");

    // inteiros c/ sinal
    let _a: i32 = 10; // tipo pode ser anotado
    let _b = 3;       // se não for anotado, será inferido. padrão i32
    let _c: i8 = 4;   // posso ter controle fino. int de 8 bits se o valor é pequeno

    //_c = 2; // este código irá gerar um erro. variáveis são immutáveis por padrão

    let mut d: i8 = 3; // definir que é mutável com mut

    // constante é um valor GLOBAL e variável é LOCAL
    const _THRESHOLD: i32 = 10;
    
    println!("variável mutável d: {}", d);
    d = 10;
    println!("variável mutável d: {}", d);

    // inteiros s/ sinal
    let _a: u32 = 10; // Se não precisar de negativos, vc ganha o dobro de inteiros

    // ponto fluante
    let _e: f32 = 3.24; // por padrão, f64

    // booleano
    let _f: bool = true;

    // strings
    // https://doc.rust-lang.org/stable/rust-by-example/std/str.html
    println!("\n\t ---- Strings -----");
    let mut string_mutavel: String = String::new(); // string mutável
    string_mutavel.push_str("lalala: ");
    string_mutavel.push_str("oioi");
    println!("{}", string_mutavel);

    let s = String::from("Teste lalal"); // string imutável
    // s.push_str("lalala: "); // invalido
    println!("{}", s);
    
    

    // coleções
    // arrays - imutáveis
    println!("\n\t ---- arrays -----");
    let xs: [i32; 5] = [1, 2, 3, 4, 5]; // arrays são de tamanho fixo. posso assinar i32 e ter valor padrão 5 (opcional)
    println!("tamanho do array: {}", xs.len());
    println!("segundo elemento: {}", xs[1]);

    // vetor - mutáveis
    println!("\n\t ---- vetores -----");
    let mut vec = Vec::new();
    vec.push(12);
    vec.push(345);
    println!("{:?}", vec);

    // tuplas
    let par = (1, true);
    println!("\n\t ---- tuplas -----");
    println!("par {:?}", par);
    println!("primeiro elemento: {}", par.0);

}
