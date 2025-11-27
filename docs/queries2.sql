"""Knihy, které byly napsány autorem s největším počtem ocenění ale nikým jiným"""

SELECT k.*
FROM kniha k
JOIN autor a ON k.id_autor = a.id_autor
WHERE a.pocet_oceneni = (
    SELECT MAX(pocet_oceneni)
    FROM autor)
EXCEPT
SELECT k.*
FROM kniha k
JOIN autor a ON k.id_autor = a.id_autor
WHERE a.pocet_oceneni < (
    SELECT MAX(pocet_oceneni)
    FROM autor);
