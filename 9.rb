##project euler 9

## a + b + c = 1000
## c = 1000 - (a+b)
## a**2 + b**2 = c**2
## a**2 + b**2 = 1000000 - 2000(a+b) + a**2 + 2ab + b**2
## 2000a + 2000b = 1000000 + 2ab
## 2000a - 2ab = 1000000 - 2000b
## a(2000-2b) = 1000000 - 2000b
## a = (1000000 - 2000b) / (2000 - 2b) 

def triangle(a)
	if (1000000 - (2000*a)) % (2000 - 2*a) == 0
		b = (1000000 - (2000*a)) / (2000 - 2*a) 
		c = 1000 - (a + b)
		return [a,b,c]
	else
		return false
	end
end

a = 1
while a < 500
	puts triangle(a).reduce(:*) if triangle(a)
	a += 1
end
