#include <iostream>
#include <cmath>

int fib(int n){
    double const PHI = 1.61803398875;
    double const ROOT_FIVE = pow(5, 0.5);
    int result = round(((pow(PHI,n)) - (pow((1 - PHI),n)))/ROOT_FIVE);
    return result;
}

int main(int argc, const char * argv[])
{
    int i = 3;
    long current = fib(i);
    long sum = 0;
    while(current < 4000000)
    {
        sum = sum + current;
        i = i + 3;
        current = fib(i);
    }
    std::cout << sum <<"\n";
    return 0;
}
