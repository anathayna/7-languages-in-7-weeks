use structopt::StructOpt;

#[derive(StructOpt)]
struct Cli{
  padrao: String,
  #[structopt(parse(from_os_str))]
  arquivo: std::path::PathBuf,
}

fn main() {
  let padrao = std::env::args().nth(1).expect("no pattern given");
  let caminho = std::env::args().nth(2).expect("no path given");
  let args = Cli {
    padrao: padrao,
    arquivo: std::path::PathBuf::from(caminho),
  };

  let args = Cli::from_args();

  let content = std::fs::read_to_string(&args.arquivo)
    .expect("could not read file");

  for line in content.lines() {
    if line.contains(&args.padrao) {
      println!("{}", line);
    }
  }
}