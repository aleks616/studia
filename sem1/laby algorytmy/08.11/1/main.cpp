#include <iostream>

int main() {
    int n;
    std::cout << "podaj ilosc elementow tablicy: " << std::endl;
    std::cin >> n;

    int tab[n];
    std::cout << "podaj elementy tablicy " << std::endl;
    for (int i=0; i<n; i++) {
        std::cin >> i;
    }
    std::cout << "pierwszy element tablicy: " << tab[0] << std::endl;
    std::cout << "zawartość tablicy: ";
    for (int i=0; i<n; i++) {
        std::cout << i << " ";
    }
    std::cout << std::endl;
    std::cout << "różnica między pierwszym a ostatnim: " << tab[0] - tab[n-1] << std::endl;
    int suma = 0;
    for (int i = 0; i < n; i++) {
        suma += tab[i];
    }
    std::cout << "suma elementów: " << suma << std::endl;

    int index;
    std::cout<<"podaj indeks elementu do wyswietlenia: ";
    std::cin>>index;
    std::cout<<tab[index]<<std::endl;
}
