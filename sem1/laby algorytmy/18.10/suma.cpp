#include <iostream>

int main() {
    int a=1, sum=0,b;
    std::cout << "wprowadź b";
    std::cin >> b;
    while (a<=b) {
        sum+=a;
        a++;
    }
    printf("suma liczb od 1 do %d wynosi %d",b,sum);
}

//Antonina Jankowiak