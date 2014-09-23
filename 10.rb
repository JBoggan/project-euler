##project euler 10
## not using any libraries, adapted from problem 7
## prime number theorem says n ln n for the n-th prime number, so let's try sieve of eratosthenes on (2..2 n ln n) ~ (2..2*10000*9.21) < (1..200000)
MAX = 2000000
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
puts primes.reduce(:+)



