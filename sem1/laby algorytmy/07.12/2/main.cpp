#include <iostream>

int main() {
    int tab[10]={28,17,3,15,22,28,5,13,18,1};

    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 9-i; j++) {
            if (tab[j] > tab[j+1]) {
                int temp = tab[j];
                tab[j] = tab[j+1];
                tab[j+1] = temp;
            }
        }
    }

    for (int i = 0; i < 10; i++) {
        std::cout << tab[i] << " ";
    }

}