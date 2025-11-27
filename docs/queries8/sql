"""List of authors who have written the highest and lowest-priced books"""

SELECT a.*, k.cena
FROM autor a
JOIN kniha k ON a.id_autor = k.id_autor
WHERE k.cena = (SELECT MAX(cena) FROM kniha)
UNION
SELECT a.*,k.cena
FROM autor a
JOIN kniha k ON a.id_autor = k.id_autor
WHERE k.cena = (SELECT MIN(cena) FROM kniha);
