--a 
SELECT o.imie, o.nazwisko, f.id_faktury, f.data_wystawienia, p.produkt, p.cena, sf.ilosc 
FROM osoby AS o 
JOIN faktury AS f ON o.id_osoby = f.id_osoby 
JOIN szczeg_faktur AS sf ON f.id_faktury = sf.id_faktury 
JOIN produkty AS p ON sf.id_produktu = p.id_produktu;

--b
SELECT o.imie, o.nazwisko, f.id_faktury, f.data_wystawienia, ( 
	SELECT SUM(p.cena * sf.ilosc) 
	FROM szczeg_faktur AS sf 
	INNER JOIN produkty AS p ON sf.id_produktu = p.id_produktu 
	WHERE sf.id_faktury = f.id_faktury 
) AS kwota_faktury
FROM osoby AS o 
JOIN faktury AS f ON o.id_osoby = f.id_osoby;

-- c  (produkty których nie ma na fakturze)
SELECT p.id_produktu, p.produkt, p.cena 
FROM produkty AS p 
LEFT JOIN szczeg_faktur AS sf ON p.id_produktu = sf.id_produktu 
WHERE sf.id_szczeg_faktur IS NULL;
