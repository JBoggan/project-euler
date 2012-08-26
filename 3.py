num = 600851475143
maxfactor = int((num ** 0.5)+1)
test = primes(maxfactor)
biggest = 0
for t in test:
    if(num % t == 0):
        biggest = t
print biggest

def primes(n):
    if n==2: return [2]
    elif n<2: return []
    s = range(3,n+1,2)
    maxroot = n**0.5
    half = (n+1)/2-1
    i = 0
    m = 3
    while m <= maxroot:
        if s[i]:
            j = (m * m - 3)/2
            s[j] = 0
            while j<half:
                s[j] = 0
                j += m
        i = i + 1
        m = 2 * i + 3
    return  [2]+[x for x in s if x]
