// https://doc.rust-lang.org/std/string/struct.String.html

// qual o melhor escolher? i8, i16, i32... justifique c/ comentário

use std::env; 

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() < 2 {
        panic!( "Program arguments missing. Please provide a file name" );            
    } 

    println!( "Arguments: {:?}", args );
}

// count -l ~/count.txt exibe a linha -> wc -l count.txt		
// count -w ~/count.txt exibe a qnt de palavras -> wc -w count.txt

// cargo run foobar 
