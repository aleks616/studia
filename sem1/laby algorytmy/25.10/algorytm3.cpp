#include <iostream>

int main() {
    int LG, SG, PL = 0, roczna = 0;
    double SP;
    std::cout << "podaj liczbe godzin: \n";
    std::cin >> LG;
    std::cout << "podaj stawke godzinową \n";
    std::cin >> SG;
    if (LG > 40) {
        const int nadgodziny = LG - 40;
        PL = (nadgodziny * SG * 2) + (40 * SG);
    } else {
        PL = LG * SG;
    }
    std::cout << "liczba godzin: " << LG << "\n zarobki brutto: " << PL << " zł\n";
    std::cout << "czy chcesz uwzględnić podatek? napisz '1' aby uwzględnić, inną liczbe aby nie uwzględniać\n";
    roczna = 52 * PL;
    int jestPodatek;
    std::cin >> jestPodatek;
    if (jestPodatek != 1) {
        std::cout << "nie uwzględniono podatku. \nroczne zarobki: " << roczna<<" zł";
        return 0;
    }

    if (roczna <= 20000) {
        SP = 0.19;
    } else if (roczna <= 30000) {
        SP = 0.21;
    } else
        SP = 0.28;

    double podatek = SP * static_cast<double>(roczna);
    double netto = static_cast<double>(roczna) - podatek;
    std::cout << "roczne zarobki: " << roczna << " zł\nstawka podatkowa: " << SP*100
            << "% \nkwota podatku: " << podatek << "zł \nwynagrodzenie netto: " << netto<<" zł";
}
