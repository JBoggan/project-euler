## project euler 4

def reverseDigits(int)
	string_int = int.to_s
	reverse_int = string_int.reverse.to_i
end

largest = 0
i = 100
while i <= 999
	j = 100
	while j <= i
		number = i * j
		largest = number if number > largest && number == reverseDigits(number)
		j += 1
	end
	i += 1
end

puts largest