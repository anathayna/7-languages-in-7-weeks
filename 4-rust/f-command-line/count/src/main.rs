// https://doc.rust-lang.org/std/string/struct.String.html

// qual o melhor escolher? i8, i16, i32... justifique c/ comentário

use std::fs::File;
use std::io::prelude::*;
use std::io::BufReader;
use std::path::Path;
use std::env;

fn count_words( s: &String ) -> i32 {
    let mut words: i32 = 0;

    for c in s.chars() {
        if c.is_whitespace() {
            words += 1;    
        }   
    }
    words + 1
}

fn counter<R: BufRead> ( reader: &mut R ) -> Result<( i32, i32 ), String> {

    let mut total_lines: i32 = 0;
    let mut total_words: i32 = 0;

    let mut line = String::from( "" );

    loop{ 
        match reader.read_line( &mut line ) {
            Ok( _ ) => {
                if line.len() == 0 {
                    break;
                }
                
                line = line.trim().to_string();
                total_lines += 1;
                total_words += count_words( &line );
                line.clear(); 
            },
            Err( why ) => return Err( why.to_string() )
        };
    }
    Ok( ( total_lines, total_words ) )
}

fn count_file( file_path: &Path ) -> Result< (i32,i32), String> {

    let file_handle = match File::open( &file_path ) {
        Err( why ) => return Err( why.to_string() ),
        Ok( file_handle ) => file_handle
    };

    let mut reader = BufReader::new( file_handle );

    let ( lines, words ) = counter( &mut reader )?;
    Ok( ( lines, words ) )
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() < 2 {
        panic!("could not read file");            
    } 

    let files: Vec<String> = Vec::from( &args[1..] );

    for file_name in files.iter() {
        let path = Path::new( &file_name ); 

        match count_file( path ) {
            Ok( ( lines, words ) ) => {
                println!("{}\t{} lines\t{} words.", path.display(), lines, words );
            },
            Err( err ) => {
                panic!("error - {}", err );
            }
        };
    }
}

// count -l ~/count.txt exibe a linha -> wc -l count.txt		
// count -w ~/count.txt exibe a qnt de palavras -> wc -w count.txt
// cargo run ./count.txt 
