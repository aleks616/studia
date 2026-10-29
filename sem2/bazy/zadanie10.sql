begin;
CREATE TABLE nowe_osoby1 AS SELECT * FROM osoby WHERE zarobki > 15000;
commit;
