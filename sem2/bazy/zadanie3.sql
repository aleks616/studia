-- A) 
DELETE FROM osoby WHERE (DATE_PART('MONTH',data_ur)=1 AND DATE_PART('DAY',data_ur)=1)
OR (DATE_PART('MONTH',data_ur)=12 AND DATE_PART('DAY',data_ur)=31);

-- B) 
ALTER TABLE osoby ADD COLUMN uwagi VARCHAR(50);
UPDATE osoby SET uwagi=CASE WHEN kod IS NOT NULL THEN 'zawiera kod'
            ELSE 'nie zawiera kodu' END;


-- C) 
CREATE TABLE kraje (
kraj VARCHAR(50),
liczba INT
);

INSERT INTO kraje (kraj, liczba) 
SELECT kraj, COUNT(*) AS liczba 
FROM osoby 
GROUP BY kraj 
HAVING COUNT(*) > 3;
