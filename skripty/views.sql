-- Pohled è. 1
-- Poèet prodejen v jednotlivych metropolich
CREATE OR REPLACE VIEW prodejny_v_metropolich AS
SELECT m.nazev as metropole, COUNT(pa.id_prodejna) as pocet_prodejen 
    FROM metropole m, prodejna pa
    WHERE pa.id_metropole = m.id_metropole
    GROUP BY m.nazev
    ORDER BY m.nazev;

    
-- Pohled è.2
-- Poèet kusù dostupných produktù na prodejnì "Apple Fifth Avenue"
CREATE OR REPLACE VIEW dostupne_produkty_na_prodejne AS
SELECT pt.nazev as dostupne_produkty, COUNT(pnp.id_produkt) as pocet
    FROM produkt_na_prodejne pnp, produkt pt, stav s, prodejna pa
    WHERE pnp.id_produkt = pt.id_produkt
      AND pnp.id_prodejna = pa.id_prodejna
      AND pnp.id_stav = s.id_stav
      AND pa.nazev LIKE 'Apple Fifth Avenue'
      AND s.nazev LIKE 'dostupne'
    GROUP BY pt.nazev 
    ORDER BY pt.nazev;
    
-- Pohled è. 3
-- Zakoupene produkty zakaznika Brian Galey
CREATE OR REPLACE VIEW zakoupene_produkty_zakaznika AS
SELECT f.id_faktura, f.datum_vystaveni, pa.nazev as prodejna, pt.nazev as produkt, pt.cena, pnp.seriove_cislo
    FROM zakaznik z, 
         faktura f, 
         polozka p, 
         produkt_na_prodejne pnp, 
         produkt pt,
         prodejna pa
    WHERE f.id_zakaznik = z.id_zakaznik
      AND p.id_faktura = f.id_faktura
      AND p.id_produkt_na_prodejne = pnp.id_produkt_na_prodejne
      AND pnp.id_produkt = pt.id_produkt
      AND pnp.id_prodejna = pa.id_prodejna
      AND z.jmeno LIKE 'Brian'
      AND z.prijmeni LIKE 'Galey'
 ORDER BY f.datum_vystaveni ASC; 