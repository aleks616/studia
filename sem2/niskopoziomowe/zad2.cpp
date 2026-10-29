#include <iostream>

void zamien(int *a,int *b) {
    int tmp=*a;
    *a=*b;
    *b=tmp;
}

int main() {
    int x,y;
    std::cout<<"wprowadz x i y\n";
    std::cin>>x>>y;
    zamien(&x,&y);
    std::cout<<"\nx:"<<x<<" y:"<<y;
}
