CREATE TYPE dochod_przekracza AS (imie varchar(50), nazwisko varchar(50), przekracza boolean);

CREATE OR REPLACE FUNCTION f_dochod_przekracza(threshold numeric)
RETURNS SETOF dochod_przekracza AS $$
DECLARE
r osoby%ROWTYPE;
BEGIN
FOR r IN SELECT * FROM osoby LOOP
IF r.zarobki > threshold THEN
RETURN QUERY SELECT r.imie, r.nazwisko, true;
ELSE
RETURN QUERY SELECT r.imie, r.nazwisko, false;
END IF;
END LOOP;
RETURN;
END;
$$ LANGUAGE plpgsql VOLATILE;
