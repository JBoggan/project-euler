##project euler 7
## prime number theorem says n ln n for the n-th prime number, so let's try sieve of eratosthenes on (2..2 n ln n) ~ (2..2*10000*9.21) < (1..200000)
MAX = 200000
numbers = (2..MAX).to_a
primes = []
numbers.each_index do |i|
	if numbers[i].class == Fixnum
		primes << numbers[i]
		j = i+numbers[i]
		while j < MAX
			numbers[j] = numbers[j].to_s
			j += numbers[i]
		end
	end
	i += 1
end
puts primes[10000] ##10001st prime



