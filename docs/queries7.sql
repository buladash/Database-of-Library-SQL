"""Total written pages for authors in libraries"""

SELECT
    a.id_autor,
    a.pseudonym AS autor,
    (SELECT SUM(k.pocet_stran) FROM kniha k WHERE k.id_autor = a.id_autor) AS celkove_strany
FROM
    autor a;
