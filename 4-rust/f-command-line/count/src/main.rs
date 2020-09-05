//https://rust-cli.github.io/book/index.html
//https://docs.rs/structopt/0.3.17/structopt/
//https://doc.rust-lang.org/std/string/struct.String.html

// conts são int
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

    // read_file(&args.file)?
    //     .lines()
    //     .take(args.num)
    //     .for_each(|line| println!("{}", line));
    // Ok(())
}

// cont -l ~/cont.txt exibe a linha -> wc -l cont.txt
// cont -w ~/cont.txt exibe a qnt de palavras -> wc -w cont.txt 