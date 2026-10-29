--a
BEGIN
postgres=*# CREATE TABLE nowe_osoby1 AS SELECT * FROM osoby WHERE zarobki > 15000;
SELECT 249
postgres=*# commit;
COMMIT

--b 
BEGIN;
DECLARE cur_klienci CURSOR FOR SELECT id,email FROM klienci WHERE aktywny = false;
FETCH NEXT FROM cur_klienci;
UPDATE klienci SET email = 'nowy@przyklad.com' WHERE CURRENT OF cur_klienci;
CLOSE cur_klienci;
COMMIT;
