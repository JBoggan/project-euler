
fn amity(n: usize) -> usize{
	let mut total = 0;
	for i in 1..n{
		if n % i == 0 {
			total += i; 
		}
	}
	return total;
}

fn main() {
	
	let mut big_sum = 0;

	for i in 1..10000{
		let div_sum = amity(i);
		if i == amity(div_sum) && i != div_sum {
			big_sum += i;
		}

	}


	println!("Rust sucks! and {}", amity(220));
	println!("Rust sucks! and {}", amity(284));
	
	println!("Rust sucks! and {}", big_sum);
}