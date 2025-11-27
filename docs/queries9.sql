"""List of books and review titles that have a rating of 4/5"""

SELECT kniha.nazev, r.publikace
FROM kniha
JOIN recenze r ON kniha.id_kniha = r.id_kniha
WHERE cena <= '600'
INTERSECT
SELECT kniha.nazev, r.publikace
FROM recenze r
JOIN kniha ON kniha.id_kniha = r.id_kniha
WHERE pocet_hvezd_z_5 = '4'
