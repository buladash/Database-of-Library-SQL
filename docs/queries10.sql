"""Where do poor librarians come from?"""

SELECT k.mesto
FROM knihovna k
JOIN knihovnik kn ON k.id_knihovna = kn.id_knihovna
WHERE kn.plat < 26000;
