#include <iostream>

int val1 = 1;
int val2 = 2;
static int val3 = 3;
static int val4;
int val6;

int myFunc(int a) {
    return a*10;
}

int main() {
    static int val5 = myFunc(val1);
    val4 = myFunc(val2);
    val6 = val3 + val4;
    printf("done\n");
    printf("val5 == %d\n", val5);
    printf("val6 == %d", val6);
}

//gcc -v --save-temps -o hello main.cpp
// hello 는 뭔지 모르겠음.