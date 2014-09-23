##project euler 6

def sumSquare(n)
	(1..n).map{|x| x**2}.reduce(:+)
end

def squareSum(n)
	(1..n).reduce(:+)**2
end

puts squareSum(100)-sumSquare(100)
