-- a 
SELECT ROUND(AVG(
( SELECT COUNT(*) 
FROM faktury 
WHERE faktury.id_osoby = osoby.id_osoby )) AS srednia_liczby_faktur 
FROM osoby 
WHERE (
	SELECT COUNT(*) FROM faktury WHERE faktury.id_osoby = osoby.id_osoby
) >= 1
,2);

-- b
SELECT imie, nazwisko 
FROM osoby 
WHERE id_osoby IN ( 
	SELECT id_osoby 
	FROM faktury 
	WHERE data_wystawienia 
	BETWEEN DATE '01-01-2024' AND DATE '01-01-2025' 
);

-- c
SELECT COUNT(*) as liczba
FROM osoby 
WHERE id_osoby IN ( 
	SELECT id_osoby 
	FROM faktury 
	GROUP BY id_osoby 
	HAVING COUNT(*) >= 1
);

-- d 
SELECT imie, nazwisko 
FROM osoby 
WHERE id_osoby IN ( 
	SELECT id_osoby 
	FROM faktury 
	WHERE forma_platnosci = 'przelew' 
);

