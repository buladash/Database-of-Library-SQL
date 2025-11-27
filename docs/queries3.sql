"""Counts all readers who did not receive notifications"""

SELECT COUNT(*)
FROM ctenar c
WHERE NOT EXISTS (
    SELECT 1
    FROM oznameni o
    WHERE o.id_ctenar = c.id_ctenar
);

SELECT COUNT(DISTINCT c.id_ctenar)
FROM ctenar c
LEFT JOIN oznameni o ON c.id_ctenar = o.id_ctenar
WHERE o.id_oznameni IS NULL;


SELECT COUNT(*)
FROM ctenar
WHERE id_ctenar NOT IN (
    SELECT id_ctenar
    FROM oznameni
);
