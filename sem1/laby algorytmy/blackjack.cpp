#include <iostream>
#include <random>
/**URUCHOMIĆ W https://www.programiz.com/cpp-programming/online-compiler/ (C++ 17 i nowszy)*/
int random(const int lower, const int upper) {
    std::random_device dev;
    std::mt19937 rng(dev());
    std::uniform_int_distribution distribution(lower, upper);
    return distribution(rng);
}
/**DLA C++ 98 USUNĄĆ FUNKCJE WYŻEJ*/
/*int random(const int lower, const int upper) {
    srand(time(NULL));
    return rand() % (upper - lower + 1) + lower;
}*/

bool kontynuowaćGre(int sum, std::string name, int karty[],int ilosc) {
    std::cout<<"\nWynik: "<<sum<<"\n";
    if (sum>21) {
        for (int i=0;i<ilosc;i++) {
            if (karty[i]==11) {
                karty[i]=1;
                return true;
            }
        }
        std::cout<<name<<" przekroczył 21\n";
        return false;
    }
    if (sum==21) {
        std::cout<<name<<" osiągnął 21\n";
        return false;
    }
    return true;
}

int main() {
    int karty[52]={2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,11,11,11,11};
    int kartyGracza[11], kartyBota[11], sumaGracza=0,sumaBota=0,indeks;
    int i=0;
    for (;i<2;i++) {
        do {
            indeks=random(0,51);
        } while (karty[indeks]==-1);
        if (karty[indeks]==11&&sumaGracza+karty[indeks]>21) {
            karty[indeks]=1;
        }
        kartyGracza[i]=karty[indeks];
        karty[indeks]=-1;
        sumaGracza+=kartyGracza[i];
    }
    /*//do testowania
    kartyGracza[0]=11;
    kartyGracza[1]=9;
    sumaGracza+=kartyGracza[0]+kartyGracza[1];
    i=2;*/

    if (!kontynuowaćGre(sumaGracza, "Gracz",kartyGracza,i)) {
        std::cout<<"koniec gry";
        return 0;
    }
    std::cout<<"karty gracza to: "<<kartyGracza[0]<<" "<<kartyGracza[1]<<"\n";
    int kontynuuj;
    do {
        std::cout<<"\nKontynuować - 1 \npoddaj sie - 0\n";
        std::cin >> kontynuuj;
        if (kontynuuj==0) break;
        do {
            indeks=random(0,51);
        } while (karty[indeks]==-1);
        kartyGracza[i]=karty[indeks];
        karty[indeks]=-1;
        if (sumaGracza+kartyGracza[i]>21) {
            for (int i1=0;i1<i;i1++) {
                if (kartyGracza[i1]==11) {
                    kartyGracza[i1]=1;
                    sumaGracza=sumaGracza-10;
                }
            }
        }

        sumaGracza+=kartyGracza[i];
        i++;

        std::cout<<"karty gracza to:\n";
        for (int i2=0;i2<i;i2++) {
            std::cout<<kartyGracza[i2]<<" ";
        }
        if (!kontynuowaćGre(sumaGracza, "Gracz",kartyGracza,i)) {
            std::cout<<"koniec gry";
            return 0;
        }
    }
    while (sumaGracza<21);


    int j=0;
    for (;j<3;j++) {
        do {
            indeks=random(0,51);
        } while (karty[indeks]==-1);
        kartyBota[j]=karty[indeks];
        karty[indeks]=-1;
        if (sumaBota+kartyBota[j]>21) {
            for (int i1=0;i1<i;i1++) {
                if (kartyBota[i1]==11) {
                    kartyBota[i1]=1;
                    sumaBota=sumaBota-10;
                }
            }
        }
        sumaBota+=kartyBota[j];
        i++;
    }
    std::cout<<"karty bota to:\n";
    for (int i2=0;i2<j;i2++) {
        std::cout<<kartyBota[i2]<<" ";
    }
    std::cout<<"\n";
    if (sumaBota>21) {
        std::cout<<"Bot przekroczył 21, wygrywa gracz";
        return 0;
    }
    if (sumaBota==21) {
        std::cout<<"Bot osiągnął 21, wygrywa bot";
        return 0;
    }
    std::cout<<"Wynik gracza: "<<sumaGracza<<" wynik bota: "<<sumaBota<<"\n";
    if (sumaGracza>sumaBota) {
        std::cout<<"Wygrywa gracz";
        return 0;
    }
    if (sumaGracza<sumaBota) {
        std::cout<<"Wygrywa bot";
        return 0;
    }
    if (sumaBota==sumaGracza) {
        std::cout<<"Remis";
        return 0;
    }
    std::cout<<"Błąd :(";


    return 0;
}