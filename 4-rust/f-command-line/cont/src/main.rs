// https://doc.rust-lang.org/std/string/struct.String.html

// qual o melhor escolher? i8, i16, i32... justifique c/ comentário

use structopt::StructOpt;

#[derive(StructOpt)]
struct Cli{
    padrao: String,
    #[structopt(parse(from_os_str))]
    arquivo: std::path::PathBuf,
}

fn main() {
    let args = Cli::from_args();

    let content = std::fs::read_to_string(&args.arquivo)
    .expect("could not read file");

    for line in content.lines() {
        if line.contains(&args.padrao) {
            println!("{}", line);
        }
    }
}

// count -l ~/count.txt exibe a linha -> wc -l count.txt
// count -w ~/count.txt exibe a qnt de palavras -> wc -w count.txt 