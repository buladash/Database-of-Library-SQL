INSERT INTO stav_knihy (nazev) VALUES
('Available'),
('Not Available');


INSERT INTO vydavatelstvi (nazev, mesto) VALUES
('Vydavatelství A', 'Praha'),
('Vydavatelství B', 'Brno');


INSERT INTO knihovna (nazev, pocet_zamestnancu, mesto, email) VALUES
('Městská knihovna', 10, 'Praha', 'knihovna@example.com'),
('Krajská knihovna Brno', 6, 'Brno', 'knihovna.brno@example.com');


INSERT INTO autor (pseudonym, rok_narozeni, pocet_knih, pocet_oceneni) VALUES
('Agatha Christie', 1890, 10, 5),
('J.K. Rowling', 1965, 7, 10),
('Puskin', 1965, 1, 3);


INSERT INTO ctenar (id_knihovna, prezdivka, rok_narozeni, oblibeny_zanr, pujcene_knihy_pocet)
VALUES
(1, 'FictionFan', 1987, 'Beletrie', 5),   
(2, 'YoungReader', 2010, 'Dětská literatura', 1); 


INSERT INTO kniha (id_autor, id_knihovna, id_stav, id_vydavatelstvi, nazev, pocet_stran, rok_vydani, zanr, cena) VALUES
(1, 1, 1, 1, 'Murder on the Orient Express', 300, 1934, 'Mystery', 15),
(2, 2, 1, 2, 'Harry Potter and the Philosopher Stone', 350, 1997, 'Fantasy', 20),
(3, 1, 1, 1, 'Chronicles of Narnia', 120, 1999, 'Fantasy', 300);


INSERT INTO knihovnik (id_knihovna, jmeno, plat, odpracovane_roky) 
VALUES
(1, 'Jan Novák', 25000, 5),
(2, 'Petra Horáková', 30000, 7);


INSERT INTO oznameni (id_knihovnik, id_ctenar, nazev) VALUES
(1, 1, 'New book available: Murder on the Orient Express'), 
(2, 2, 'New book available: Harry Potter');  


INSERT INTO recenze (id_kniha, publikace, pocet_hvezd_z_5) VALUES
(1, 'Great Book!', 5),    
(2, 'Exciting read.', 4); 
