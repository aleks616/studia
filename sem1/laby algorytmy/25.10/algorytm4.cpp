#include <iostream>

int main() {
    int opcja = 0;
    do {
        std::cout << "Wybierz opcje: \n1 - suma liczb od a do b \n2 - suma kwadratów liczb od a do b \n"
                "3 - średnia liczb od a do b \n4 - zakończenie programu\n";
        std::cin >> opcja;
        if (opcja==4) {
            std::cout << "Koniec programu\n";
            continue;
        }
        std::cout << "Podaj dwie liczby ";
        int a, b;
        std::cin >> a >> b;
        if (a > b) std::swap(a, b);

        switch (opcja) {
            case 1: {
                int suma = 0;
                int i = a;
                while (i <= b) {
                    suma += i;
                    i++;
                }
                std::cout << "Suma liczb od " << a << " do " << b << " to " << suma << "\n";
                break;
            }
            case 2: {
                int suma = 0;
                int i = a;
                while (i * i <= b * b) {
                    suma += i * i;
                    i++;
                }
                std::cout << "Suma kwadratów liczb od " << a << " do " << b << " to " << suma << "\n";
                break;
            }
            case 3: {
                int suma = 0;
                double srednia = 0;
                int ilosc = (b - a) + 1;
                int i = a;
                while (i <= b) {
                    suma += i;
                    i++;
                }
                srednia = static_cast<double>(suma) / static_cast<double>(ilosc);
                std::cout << "Średnia liczb od " << a << " do " << b << " to " << srednia << "\n";
                break;
            }
            default: {
                std::cout << "wybrana opcja (" << opcja << ") nie istnieje. Wybierz 1 lub 2 lub 3 lub 4.\n";
            }
        }
    }while (opcja != 4);


    return 0;
}
