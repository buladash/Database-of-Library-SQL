"""Books written by Agatha Christie"""

SELECT DISTINCT *
FROM (
    SELECT DISTINCT *
    FROM AUTOR
    WHERE AUTOR.pseudonym = 'Agatha Christie'
) R1
NATURAL JOIN (
    SELECT DISTINCT KNIHA.nazev
    FROM KNIHA
) R2;
