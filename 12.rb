##project euler 12

def triangle(int)
	(1..int).reduce(:+)
end

def divisors(int)
	count = 0
	(1..int).each do |i|
		count += 1 if int % i == 0
	end
	return count
end

n = 1
while divisors(triangle(n)) <= 500
	puts "#{triangle(n)} #{divisors(triangle(n))}"
	n += 1
end
puts triangle(n)

