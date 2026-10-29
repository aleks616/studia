-- A
SELECT DISTINCT marka, model
FROM auta
ORDER BY marka ASC, model ASC;

-- B
SELECT marka, COUNT(*) AS ilosc
FROM auta
GROUP BY marka
ORDER BY ilosc DESC;

-- C
SELECT model
FROM auta
WHERE model ILIKE 'f%' OR model ILIKE 'c%';

-- D
SELECT marka, model, MAX(cena) AS maks_cena
FROM auta
GROUP BY marka, model
ORDER BY marka ASC, maks_cena ASC;

-- E
SELECT marka, ROUND(AVG(cena), 2) AS srednia_cena
FROM auta
GROUP BY marka;

-- F
SELECT marka, model, cena
FROM auta
WHERE cena BETWEEN 40000 AND 120000
ORDER BY cena ASC;

-- G
ALTER TABLE auta ADD CONSTRAINT auta_marka_length CHECK (LENGTH(marka) BETWEEN 2 AND 50);

-- H
ALTER TABLE osoby ADD CONSTRAINT osoby_kraj_not_allowed CHECK (kraj <> 'Germany');
