#include <iostream>

int main() {
    char text[256];
    int size = 0;
    int ch;

    std::cout << "wprowadz ciag znakow: ";
    int i = 0;
    bool truncated = false;
    while (true) {
        ch = std::cin.get();
        if (ch == EOF || ch == '\n') break;
        if (i < (int)sizeof(text) - 1) {
            text[i++] = (char)ch;
        } else {
            truncated = true;
        }
    }
    text[i < (int)sizeof(text) ? i : (int)sizeof(text) - 1] = '\0';

    if (truncated) {
        size = (int)sizeof(text)-1; //rozmiar bez \0
    } else {
        while (text[size] != '\0') size++;
    }

    std::cout << "dlugosc: " << size << '\n';
    return 0;
}

