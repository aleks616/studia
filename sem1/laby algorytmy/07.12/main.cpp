#include <iostream>

int main() {
    int tab[4][4]={{5,7,13,22},{88,100,3,2},{33,7,2,3},{7,3,15,2}};
    std::cout<<"szukanie klucza w tablicy 2d\n";
    std::cout<<"wprowadz klucz do znalezienia\n";
    int klucz,xStart,xEnd,yStart,yEnd;
    std::cin>>klucz;
    std::cout<<"wprowadz poczatkowe współrzędne x i y (zakres 0-3)\n";
    std::cin>>xStart>>yStart;
    std::cout<<"wprowadz koncowe współrzędne x i y (zakres 0-3)\n";
    std::cin>>xEnd>>yEnd;

    while (xStart<=xEnd) {
        int y = yStart;
        while (y<=yEnd) {
            if (tab[xStart][y]==klucz) {
                std::cout<<"Znaleziono klucz na pozycji: "<<xStart<<" "<<y<<" \n";
            }
            y++;
        }
        xStart++;
    }
}