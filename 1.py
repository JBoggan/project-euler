def f(x): return x % 3 == 0 or x % 5 == 0
multiples = filter(f, range(1,1000))
print sum(multiples)