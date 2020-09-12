use structopt::StructOpt;

#[derive(StructOpt)]
struct Cli{
    padrao: String,
    #[structopt(parse(from_os_str))]
    arquivo: std::path::PathBuf,
}

// i32: p/ melhor utilização de cache nesse exemplo, ocupando só 8K de dados
fn main() {
    let mut words: i32 = 0 ;
    let mut lines: i32 = 0;
    let args = Cli::from_args();

    let content = std::fs::read_to_string(&args.arquivo)
    .expect("could not read file");

    for line in content.lines() {
        if line.contains(&args.padrao) {
            println!("{}", line);
        }

        let x = line.split(" ");

        lines += 1;
        words += x.count() as i32;
    }

    println!("{}\t lines", lines);
    println!("{}\t words", words);
}

// wc -l count.txt		
// wc -w count.txt
// cargo run count count.txt
