//1
Console.WriteLine(args[0]);
string x = args[0];
Console.WriteLine("podaj nazwisko");
string y=(Console.ReadLine());
Console.WriteLine("podaj wiek");
int z=(int.Parse(Console.ReadLine()));
Console.WriteLine("Użytkownik {0} {1} ma {2} lat", x, y, z);



//2
Console.BackgroundColor = ConsoleColor.Blue;
Console.ForegroundColor = ConsoleColor.Red;
Console.Title = "Tablica prawdy operatora logicznego AND";
Console.WriteLine("Tablica prawdy operatora logicznego AND");
Console.WriteLine("true AND true = {0}", true && true);
Console.WriteLine("true AND false = {0}", true && false);
Console.WriteLine("false AND true = {0}", false && true);
Console.WriteLine("false AND false = {0}", false && false);


//3
Console.ResetColor();
Console.WriteLine("podaj wysokość");
int height = int.Parse(Console.ReadLine());
for (int i = 1; i < height * 2; i += 2) {

    for (int j = 0; j < height - (i / 2); j++) {
        Console.Write(" ");
    }
    for (int j = 0; j < i; j++) {
        Console.Write("*");
    }
    for (int j = 0; j < height - (i / 2); j++) {
        Console.Write(" ");
    }

    Console.WriteLine();
}

//4
Console.WriteLine("podaj zakres (dół i górę)");
//dol zakresu
int dol = int.Parse(Console.ReadLine());
int gora = int.Parse(Console.ReadLine());
Console.ForegroundColor = ConsoleColor.Blue;
Console.Write("* ");
for (int i = dol; i <= gora; i++) {
    if (i < 10) {
        Console.Write(" {0} ",i);
    }
    else {
        Console.Write("{0} ",i);
    }
}
Console.WriteLine();
for (int i = dol; i <= gora; i++) {
    Console.ForegroundColor = ConsoleColor.Green;
    Console.Write(i+" ");
    Console.ResetColor();
    for (int j = dol; j <= gora; j++) {
        int wynik = i * j;
        bool spacja = wynik < 10;
        if (spacja) {
            Console.Write(" {0} ",wynik);
        }
        else {
            Console.Write(i*j+" ");
        }
    }
    Console.WriteLine();
}

//5
Console.WriteLine("podaj 10 liczb");
int[] tab=new int[10];
for (int i = 0; i < 10; i++) {
    string input = Console.ReadLine();
    if (int.TryParse(input, out _)) {
        tab[i]=Int32.Parse(input);
    }
}

int suma = 0;
int min = tab[0];
int max = tab[0];
foreach (var i in tab) {
    suma += i;
    if (i < min) min = i;
    if (i > max) max = i;
}

double srednia = (double)suma / 10;

Console.WriteLine("średnia: {0}\nminimum: {1}\nmaksimum: {2} ",srednia,min,max);
