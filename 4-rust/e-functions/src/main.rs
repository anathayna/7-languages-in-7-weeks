fn is_divisible_by(lhs: u32, rhs: u32) -> bool {
    if rhs == 0 {
        return false;
    }

    // this is an expression, the `return` keyword is not necessary here
    lhs % rhs == 0
}

fn main() {
    if is_divisible_by(100,10) {
        println!("é divisível");
    }
}