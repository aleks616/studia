#include <iostream>

int main() {
    int a=1, b=1, n;
    std::cout<<"wprowadź liczbe \n";
    std::cin>>n;
    if (n<=2) std::cout<<1;
    else {
        for (int i=2; i<n; i++) {
            int temp = b;
            b=b+a;
            a=temp;
        }
        std::cout<<b;
    }

}


//Antonina Jankowiak