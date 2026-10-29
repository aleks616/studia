#include <iostream>

int main() {
    int a,b;
    std::cout<<"wprowadź a i b\n";
    std::cin>>a>>b;
    while (a!=b) {
        if (a>b) {
            a-=b;
        }
        else {
            b-=a;
        }
    }
    std::cout<<a;
}

//Antonina Jankowiak