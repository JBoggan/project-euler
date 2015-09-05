memo = {0:0, 1:1}

def fib(n):
    if not n in memo:
        memo[n] = fib(n-1) + fib(n-2)
    return memo[n]
evens = []

n = 0
while fib(n) < 4000000:
    if fib(n) % 2 == 0:
        evens.append(fib(n))
    n = n + 1

print sum(evens)