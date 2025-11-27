"""It will show everything from the ctenar and notification tables."""

SELECT c.*, o.*
FROM ctenar c
FULL OUTER JOIN oznameni o ON c.id_ctenar = o.id_ctenar;
