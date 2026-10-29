CREATE TABLE osoby_zmiany (
  id_zmiany SERIAL PRIMARY KEY,
  id_osoby INT NOT NULL,
  pole VARCHAR(50),
  stara_wartosc TEXT,
  nowa_wartosc TEXT,
  termin_zmiany TIMESTAMP NOT NULL
);

CREATE OR REPLACE FUNCTION log_imie_nazwisko()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF TG_OP = 'DELETE' THEN
    INSERT INTO osoby_zmiany(id_osoby, pole, stara_wartosc, nowa_wartosc, termin_zmiany)
    VALUES (OLD.id_osoby, NULL, OLD.imie || ' ' || OLD.nazwisko, NULL, now());
    RETURN OLD;
  END IF;

  IF TG_OP = 'UPDATE' THEN
    IF OLD.imie IS DISTINCT FROM NEW.imie THEN
      INSERT INTO osoby_zmiany(id_osoby, pole, stara_wartosc, nowa_wartosc, termin_zmiany)
      VALUES (NEW.id_osoby, 'imie', OLD.imie, NEW.imie, now());
    END IF;
    IF OLD.nazwisko IS DISTINCT FROM NEW.nazwisko THEN
      INSERT INTO osoby_zmiany(id_osoby, pole, stara_wartosc, nowa_wartosc, termin_zmiany)
      VALUES (NEW.id_osoby, 'nazwisko', OLD.nazwisko, NEW.nazwisko, now());
    END IF;
    RETURN NEW;
  END IF;

  RETURN NULL;
END;
$$;

CREATE TRIGGER tg_log_imie_nazwisko
AFTER UPDATE OR DELETE ON osoby
FOR EACH ROW
EXECUTE FUNCTION log_imie_nazwisko();