##project euler 14

## if you can backtrack one step, it isn't the longest number
## any number 499999 or less has a number twice its size, so can't be the highest

## stupid version

i = 999999
max_length = 1
max_start = 0
def collatz(n)
	if n % 2 == 0
		return n/2
	else
		return (3*n + 1)
	end
end


while i > 499999

	current = i
	steps = 0
	until current == 1
		steps += 1
		current = collatz(current)
	end
	if steps > max_length
		max_length = steps
		max_start = i
	end
	puts "#{i} #{steps}"
	i -= 1
end

puts "Answer is #{max_start} at #{max_length}"


