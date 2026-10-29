#include <iostream>
int first[5]={1,2,3,4,5};
int my_account_number=50;
int second[5]={10,11,12,13,14};
bool admin_privileges=true;

int main() {
    std::cout<<"first: ";
    for(int i=0;i<5;i++) {
        std::cout<<first[i]<<' ';
    }
    std::cout<<"\nsecond: ";
    for(int i=0;i<5;i++) {
        std::cout<<*(second+i)<<' ';
    }
    std::cout<<"\nnieprawidłowe indeksy first: ";
    for(int i=0;i<20;i++) {
        std::cout<<*(first+i)<<' ';
    }
    std::cout<<"\nnieprawidłowe indeksy second: ";
    for(int i=-10;i<30;i++) {
        std::cout<<*(first+i)<<' ';
    }

    std::cout<<"\nprzed nadpisaniem "<<admin_privileges;
    char *base=(char *)first;
    char *target=(char *)&admin_privileges;
    int offset=(int)((target-base)/sizeof(int));
    first[offset]=0;

    std::cout<<"\npo nadpisaniu "<<admin_privileges;

    return 0;
}

