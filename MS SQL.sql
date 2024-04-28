SELECT * INTO MaszkoltVendeg FROM Vendeg;
ALTER TABLE MaszkoltVendeg
ALTER COLUMN usernev ADD MASKED WITH (FUNCTION = 'random(1, 100)');
ALTER TABLE MaszkoltVendeg
ALTER COLUMN email ADD MASKED WITH (FUNCTION = 'email()');
ALTER TABLE MaszkoltVendeg
ALTER COLUMN nev ADD MASKED WITH (FUNCTION = 'partial(2, "XXXXXXX", 0)');
CREATE LOGIN MaszkoltFelhasznalo WITH PASSWORD = 'Jelszo123';
USE Szallas;
CREATE USER MaszkoltFelhasznalo FOR LOGIN MaszkoltFelhasznalo;
GRANT SELECT ON MaszkoltVendeg TO MaszkoltFelhasznalo;
