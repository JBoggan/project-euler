#include <iostream>
using namespace std;
int main(int argc, const char * argv[])
{
    int i = 3;
    int sum = 0;
    while (i < 1000) {
        if (i % 3 == 0 || i % 5 == 0)
        {
            cout << i << endl;
            sum = sum + i;
        }
        i++;
    }
    cout << "Answer is " << sum << endl;
    return 0;
}