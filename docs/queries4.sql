"""The most expensive book and all the conditions it can have"""

SELECT k.*, s.*
FROM kniha k
CROSS JOIN stav_knihy s
WHERE k.cena = (SELECT MAX(cena) FROM kniha);
