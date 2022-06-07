#include <iostream>
using namespace std;

int main()
{
    const int n = 10;
    int array[n] = { 35,2,3,4,5,6,7,8,9,10 };
    for (int i = 0; i < n; i++)
    {
        if (i % 2 == 0) {
            array[i] = array[i] >> 1;
        }
        else {
            array[i] = array[i] << 1;
        }
        cout << array[i] << " ";
    }

    return 0;
}
