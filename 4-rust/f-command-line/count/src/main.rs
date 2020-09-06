// https://doc.rust-lang.org/std/string/struct.String.html

// qual o melhor escolher? i8, i16, i32... justifique c/ comentário

use std::env; // Use this crate to access command line arguments.

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() < 2 {
        panic!( "Program arguments missing. Please provide a file name" );            
    } 

    let files: Vec<String> = Vec::from( &args[1..] );

    for file_name in files.iter() {
        println!( "Got file name: {}", count.txt);
    }
}

// count -l ~/count.txt exibe a linha -> wc -l count.txt
// count -w ~/count.txt exibe a qnt de palavras -> wc -w count.txt 