fn main() {
    
    println!("\n\t ---- if -----");
    let n = 5;
    if n < 0 {
        print!("{} is negative", n);
    } else if n > 0 {
        print!("{} is positive", n);
    } else {
        print!("{} is zero", n);
    }

    let big_n =
    if n < 10 && n > -10 {
        println!(", and is a small number, increase ten-fold");
        10 * n
    } else {
        println!(", and is a big number, halve the number");
        n / 2
    };
    println!("if nested: {}", big_n);

    println!("\n\t ---- while -----");
    // counter variable
    let mut n = 1;

    // loop while `n` is less than 101
    while n < 101 {
        if n % 15 == 0 {
            println!("fizzbuzz");
        } else if n % 3 == 0 {
            println!("fizz");
        } else if n % 5 == 0 {
            println!("buzz");
        } else {
            println!("{}", n);
        }

        n += 1;
    }

    println!("\n\t ---- match simples -----");
    let number = 13;
    // TODO ^ try different values for `number`

    println!("tell me about {}", number);
    match number {
        // match a single value
        1 => println!("one!"),
        // match several values
        2 | 3 | 5 | 7 | 11 => println!("this is a prime"),
        // match an inclusive range
        13..=19 => println!("a teen"),
        // handle the rest of cases
        _ => println!("ain't special"),
    }

    println!("\n\t ---- match c/ structs -----");
    struct Foo {
        x: (u32, u32),
        y: u32,
    }

    // try changing the values in the struct to see what happens
    let foo = Foo { x: (1, 2), y: 3 };

    match foo {
        Foo { x: (1, b), y } => println!("first of x is 1, b = {},  y = {} ", b, y),

        // you can destructure structs and rename the variables,
        // the order is not important
        Foo { y: 2, x: i } => println!("y is 2, i = {:?}", i),

        // and you can also ignore some variables:
        Foo { y, .. } => println!("y = {}, we don't care about x", y),
        // this will give an error: pattern does not mention field `x`
        //Foo { y } => println!("y = {}", y),
    }
}