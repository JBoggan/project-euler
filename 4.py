i = 100
j = 100
biggest = 0
while (j < 1000):
    i = 100
    while(i < j):
        print i * j
        test = i * j
        string = str(test)
        forward = []
        for d in string:
            forward.append(d)
        backward = forward.reverse()
        if(forward == backward and test > biggest):
            biggest = test
        i = i + 1
    j = j + 1
print biggest
    