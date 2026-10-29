--a
CREATE OR REPLACE FUNCTION osoby_z_kraju(kraj_in text)
RETURNS TABLE(id_osoby bigint, imie text, nazwisko text, kraj text, zarobki numeric)
AS $$
SELECT id_osoby, imie, nazwisko, kraj, zarobki
FROM osoby
WHERE kraj = $1
ORDER BY zarobki DESC;
$$ LANGUAGE sql;

SELECT * FROM osoby_z_kraju('China');

CREATE OR REPLACE FUNCTION log_osoby()
RETURNS trigger AS $$
BEGIN
IF TG_OP = 'INSERT' THEN
INSERT INTO log_osoby_tbl(action, id_osoby, opis, created_at)
VALUES ('INSERT', NEW.id_osoby, NEW.imie || ' ' || NEW.nazwisko || ' dodany', now());
RETURN NEW;
ELSIF TG_OP = 'UPDATE' THEN
INSERT INTO log_osoby_tbl(action, id_osoby, opis, created_at)
VALUES ('UPDATE', NEW.id_osoby, NEW.imie || ' ' || NEW.nazwisko || ' zaktualizowany', now());
RETURN NEW;
ELSIF TG_OP = 'DELETE' THEN
INSERT INTO log_osoby_tbl(action, id_osoby, opis, created_at)
VALUES ('DELETE', OLD.id_osoby, OLD.imie || ' ' || OLD.nazwisko || ' usunięty', now());
RETURN OLD;
END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE IF NOT EXISTS log_osoby_tbl(
id SERIAL PRIMARY KEY,
action TEXT NOT NULL,
id_osoby BIGINT,
opis TEXT,
created_at TIMESTAMPTZ DEFAULT now()
);

DROP TRIGGER IF EXISTS trg_log_osoby ON osoby;
CREATE TRIGGER trg_log_osoby
AFTER INSERT OR UPDATE OR DELETE ON osoby
FOR EACH ROW EXECUTE FUNCTION log_osoby();



--b 
CREATE OR REPLACE FUNCTION log_osoby()
RETURNS trigger AS $$
BEGIN
IF TG_OP='INSERT' THEN
INSERT INTO log_prac(action,id_osoby,opis,created_at) VALUES ('INSERT', NEW.id_osoby, NEW.imie || ' ' || NEW.nazwisko || ' dodany', now());
RETURN NEW;
ELSIF TG_OP='UPDATE' THEN
INSERT INTO log_prac(action,id_osoby,opis,created_at) VALUES ('UPDATE', NEW.id_osoby, NEW.imie || ' ' || NEW.nazwisko || ' zaktualizowany', now());
RETURN NEW;
ELSIF TG_OP='DELETE' THEN
INSERT INTO log_prac(action,id_osoby,opis,created_at) VALUES ('DELETE', OLD.id_osoby, OLD.imie || ' ' || OLD.nazwisko || ' usunięty', now());
RETURN OLD;
END IF;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_log_osoby ON osoby;
CREATE TRIGGER trg_log_osoby
AFTER INSERT OR UPDATE OR DELETE ON osoby
FOR EACH ROW EXECUTE FUNCTION log_osoby();

--CREATE FUNCTION
--NOTICE:  trigger "trg_log_osoby" for relation "osoby" does not exist, skipping DROP TRIGGER
--CREATE TRIGGER