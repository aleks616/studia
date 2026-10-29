#include <iostream>

int main() {
    long a;
    std::cout<<"Podaj liczbe: ";
    std::cin>>a;
    long *b=&a;
    std::cout<<*b<<std::endl;


    float *c=(float *)b;
    std::cout<<*c<<std::endl;
}
