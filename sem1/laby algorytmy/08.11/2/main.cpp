#include <iostream>

int main() {
    int m, n;
    std::cout << "podaj ilosc elementow tablicy w wymiarze m oraz n: " << std::endl;
    std::cin >> m >> n;

    int tab[m][n];
    std::cout << "podaj elementy tablicy " << std::endl;
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            std::cin >> tab[i][j];
        }
    }

    std::cout << "zawartość tablicy: " << std::endl;
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            std::cout << tab[i][j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << std::endl;

    int suma = 0;
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            suma += tab[i][j];
        }
    }
    std::cout << "suma elementów: " << suma << std::endl;

    std::cout << "podaj indeksy elementu do wyświetlenia" << std::endl;
    int a, b;
    std::cin >> a >> b;
    std::cout << tab[a][b] << std::endl;
}
