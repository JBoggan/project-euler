##project euler 12

## don't brute force this, takes forever
## but remember that triangle numbers are n choose 2
## aka n+1! / (n-1)!2! = n+1(n)/2 = T_n
## now n and (n+1) are co-prime, so if M | T_n
## then M = ab where a | n, b | n+1 
## a,b = 1 is counted twice, but the case where a,b = T_n isn't counted so it evens out
## so div(T_n) = div(n/2)*div(n+1) or div(n)*div(n+1/2)
## so calculate div(n) incrementally and figure out when the last two multiplied equaled 500 or greater





def divisors(int)
	count = 0
	(1..int).each do |i|
		count += 1 if int % i == 0
	end
	return count
end

def triangle_divisors(int)
	return divisors(int/2) * divisors(int+1) if int % 2 == 0
	return divisors(int) * divisors((int+1)/2) if int % 2 == 1
end

triangle = 3
n = 2
while triangle_divisors(n) <= 500
	n += 1
	triangle += n
end
puts triangle

