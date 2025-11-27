CREATE TABLE autor (
    id_autor SERIAL NOT NULL,
    pseudonym VARCHAR(256) NOT NULL,
    rok_narozeni INTEGER NOT NULL,
    pocet_knih INTEGER NOT NULL,
    pocet_oceneni INTEGER NOT NULL
);
ALTER TABLE autor ADD CONSTRAINT pk_autor PRIMARY KEY (id_autor);

CREATE TABLE ctenar (
    id_ctenar SERIAL NOT NULL,
    id_knihovna INTEGER NOT NULL,
    prezdivka VARCHAR(256) NOT NULL,
    rok_narozeni INTEGER NOT NULL,
    oblibeny_zanr VARCHAR(256) NOT NULL,
    pujcene_knihy_pocet INTEGER NOT NULL
);
ALTER TABLE ctenar ADD CONSTRAINT pk_ctenar PRIMARY KEY (id_ctenar);

CREATE TABLE kniha (
    id_kniha SERIAL NOT NULL,
    id_autor INTEGER NOT NULL,
    id_knihovna INTEGER NOT NULL,
    id_stav INTEGER NOT NULL,
    id_vydavatelstvi INTEGER NOT NULL,
    nazev VARCHAR(256) NOT NULL,
    pocet_stran INTEGER NOT NULL,
    rok_vydani INTEGER NOT NULL,
    zanr VARCHAR(256) NOT NULL,
    cena INTEGER NOT NULL
);
ALTER TABLE kniha ADD CONSTRAINT pk_kniha PRIMARY KEY (id_kniha);

CREATE TABLE knihovna (
    id_knihovna SERIAL NOT NULL,
    nazev VARCHAR(256) NOT NULL,
    pocet_zamestnancu INTEGER NOT NULL,
    mesto VARCHAR(256) NOT NULL,
    email VARCHAR(256) NOT NULL
);
ALTER TABLE knihovna ADD CONSTRAINT pk_knihovna PRIMARY KEY (id_knihovna);

CREATE TABLE knihovnik (
    id_knihovnik SERIAL NOT NULL,
    id_knihovna INTEGER NOT NULL,
    jmeno VARCHAR(256) NOT NULL,
    plat INTEGER NOT NULL,
    odpracovane_roky INTEGER NOT NULL
);
ALTER TABLE knihovnik ADD CONSTRAINT pk_knihovnik PRIMARY KEY (id_knihovnik);

-- Warning: Missing primary key. It is recommended to explicitly define a primary key.
CREATE TABLE oddeleni (
    id_knihovna INTEGER NOT NULL,
    id_oddeleni VARCHAR(256) NOT NULL,
    nazev VARCHAR(256) NOT NULL,
    pocet_knih INTEGER NOT NULL
);

CREATE TABLE oznameni (
    id_oznameni SERIAL NOT NULL,
    id_knihovnik INTEGER NOT NULL,
    id_ctenar INTEGER NOT NULL,
    nazev VARCHAR(256) NOT NULL
);
ALTER TABLE oznameni ADD CONSTRAINT pk_oznameni PRIMARY KEY (id_oznameni);

CREATE TABLE recenze (
    id_recenze SERIAL NOT NULL,
    id_kniha INTEGER NOT NULL,
    publikace VARCHAR(256) NOT NULL,
    pocet_hvezd_z_5 INTEGER NOT NULL
);
ALTER TABLE recenze ADD CONSTRAINT pk_recenze PRIMARY KEY (id_recenze);

CREATE TABLE stav_knihy (
    id_stav SERIAL NOT NULL,
    nazev VARCHAR(256) NOT NULL
);
ALTER TABLE stav_knihy ADD CONSTRAINT pk_stav_knihy PRIMARY KEY (id_stav);

CREATE TABLE vydavatelstvi (
    id_vydavatelstvi SERIAL NOT NULL,
    nazev VARCHAR(256) NOT NULL,
    mesto VARCHAR(256) NOT NULL
);
ALTER TABLE vydavatelstvi ADD CONSTRAINT pk_vydavatelstvi PRIMARY KEY (id_vydavatelstvi);

ALTER TABLE ctenar ADD CONSTRAINT fk_ctenar_knihovna FOREIGN KEY (id_knihovna) REFERENCES knihovna (id_knihovna) ON DELETE CASCADE;

ALTER TABLE kniha ADD CONSTRAINT fk_kniha_autor FOREIGN KEY (id_autor) REFERENCES autor (id_autor) ON DELETE CASCADE;
ALTER TABLE kniha ADD CONSTRAINT fk_kniha_knihovna FOREIGN KEY (id_knihovna) REFERENCES knihovna (id_knihovna) ON DELETE CASCADE;
ALTER TABLE kniha ADD CONSTRAINT fk_kniha_stav_knihy FOREIGN KEY (id_stav) REFERENCES stav_knihy (id_stav) ON DELETE CASCADE;
ALTER TABLE kniha ADD CONSTRAINT fk_kniha_vydavatelstvi FOREIGN KEY (id_vydavatelstvi) REFERENCES vydavatelstvi (id_vydavatelstvi) ON DELETE CASCADE;

ALTER TABLE knihovnik ADD CONSTRAINT fk_knihovnik_knihovna FOREIGN KEY (id_knihovna) REFERENCES knihovna (id_knihovna) ON DELETE CASCADE;

ALTER TABLE oddeleni ADD CONSTRAINT fk_oddeleni_knihovna FOREIGN KEY (id_knihovna) REFERENCES knihovna (id_knihovna) ON DELETE CASCADE;

ALTER TABLE oznameni ADD CONSTRAINT fk_oznameni_knihovnik FOREIGN KEY (id_knihovnik) REFERENCES knihovnik (id_knihovnik) ON DELETE CASCADE;
ALTER TABLE oznameni ADD CONSTRAINT fk_oznameni_ctenar FOREIGN KEY (id_ctenar) REFERENCES ctenar (id_ctenar) ON DELETE CASCADE;

ALTER TABLE recenze ADD CONSTRAINT fk_recenze_kniha FOREIGN KEY (id_kniha) REFERENCES kniha (id_kniha) ON DELETE CASCADE;
