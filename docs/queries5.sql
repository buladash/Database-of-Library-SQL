"""The result for the oldest book will contain all rows from the book table and the corresponding rows from the author table. 
If the book does not have an assigned author, then the column from the authors table will be marked as NULL."""

SELECT autor.*, kniha.*
FROM autor
RIGHT OUTER JOIN kniha ON autor.id_autor = kniha.id_autor
WHERE kniha.rok_vydani = (SELECT MIN(rok_vydani) FROM kniha);
