use std::fs;

pub fn solve() {
    let input = fs::read_to_string("./day1/input.txt").expect("Unable to read file");
    let input = input.lines();
    let input: i32 = input.map(|word| word
                          .chars()
                          .filter(|character| character.is_digit(10)) 
                          .collect::<String>()
                          .parse::<i32>()
                          .unwrap()
    ).sum();

    println!("{input}");
    /*
    for line in input {
        let filtered: i32 = line
            .chars()
            .filter(|character| character.is_digit(10))
            .collect::<String>()
            .parse::<i32>()
            .unwrap();
        println!("{filtered}");
    }
    */
}
