A.
CREATE TABLE zadanieA AS SELECT kraj, ROUND(AVG(zarobki),2) AS zarobki
FROM osoby 
WHERE kraj LIKE '%a' AND zarobki IS NOT NULL
GROUP BY kraj
ORDER BY kraj;

B.
CREATE TABLE zadanieB AS
SELECT imie, nazwisko, AGE(data_ur) AS wiek
FROM osoby
WHERE DATE_PART('year', data_ur) BETWEEN 1950 AND 2000
ORDER BY wiek ASC;
