-- vkladani hodnot do tabulky METROPOLE (id, nazev, stat)
INSERT INTO metropole 
    VALUES (1, 'Cupertino', 'Kalifornie');
    
INSERT INTO metropole
    VALUES (2, 'City of New York', 'New York');
    
INSERT INTO metropole
    VALUES (3, 'Paøíž', 'Francie');
-------------------------------------------------------------------------------

-- vkladani hodnot do tabulky PRODEJNA (id, nazev, ulice, cislo-popisne, zip, id-metropole)
INSERT INTO prodejna
    VALUES (1, 'Apple Park Visitor Center', 'North Tantau Avenue', 10600, 95014, 1);
    
INSERT INTO prodejna
    VALUES (2, 'Apple Fifth Avenue', 'Fifth Avenue', 767, 10153, 2);

INSERT INTO prodejna
    VALUES (3, 'Apple Grand Central', 'Grand Central Terminal', 45, 10017, 2);

INSERT INTO prodejna
    VALUES (4, 'Apple Opéra', 'Rue Halévy', 12, 75009, 3);
    
-------------------------------------------------------------------------------

-- vkladani dat do tabulky KATEGORIE (id, nazev)
INSERT INTO kategorie
    VALUES (1, 'Mac');

INSERT INTO kategorie
    VALUES (2, 'iPad');

INSERT INTO kategorie
    VALUES (3, 'iPhone');
-------------------------------------------------------------------------------

-- vkladani dat do tabulky PRODUKT (id, nazev, popis, cena, id_kategorie)
INSERT INTO produkt
    VALUES (1, 'Macbook Air', 
        '13,3 palcový Retina displej, Èip Apple M1, 8 GB pamìti, 256 GB úložištì', 
        29990, 1);

INSERT INTO produkt
    VALUES (2, 'Macbook Pro', 
        '14 palcový Liquid Retina XDR displej, Èip Apple M1 Pro, 16 GB pamìti, 512 GB úložištì', 
        58990, 1);

INSERT INTO produkt
    VALUES (3, 'iMac', 
        '24 palcový Retina 4,5K displej, Èip Apple M1, 8 GB pamìti, 512 GB úložištì', 
        49990, 1);
    
INSERT INTO produkt
    VALUES (4, 'iPad Air', 
        '10,9 palcový Liquid Retina displej, Èip A14 Bionic, 64 GB úložištì', 
        16990, 2);
        
INSERT INTO produkt
    VALUES (5, 'iPad Pro', 
        '11 palcový Liquid Retina displej, Èip Apple M1, 256 GB úložištì', 
        25790, 2);

INSERT INTO produkt
    VALUES (6, 'iPhone 13', 
        '6,1 palcový Super Retina XDR displej, Èip A15 Bionic, 128 GB úložištì', 
        22990, 3);
-------------------------------------------------------------------------------

-- vkladani dat do tabulky PRODEJCE (id, jmeno, prijmeni, tel-cislo, email, id_prodejna)
INSERT INTO prodejce
    VALUES (1, 'Dale', 'Knight', '719-579-1984', 'DaleKnight@email.com', 1);

INSERT INTO prodejce
    VALUES (2, 'Annette', 'Hawley', '302-930-2561', 'AnnetteHawley@email.com', 1);

INSERT INTO prodejce
    VALUES (3, 'Peter', 'Rodriquez', '901-759-2707', 'PeterRodriquez@email.com', 1);

INSERT INTO prodejce
    VALUES (4, 'David', 'Butler', '267-545-2045', 'DavidButler@email.com', 2);

INSERT INTO prodejce
    VALUES (5, 'Hazel', 'Gray', '248-428-3377', 'HazelGray@email.com', 2);
    
INSERT INTO prodejce
    VALUES (6, 'Armando', 'Richardson', '507-426-1033', 'ArmandoRichardson@email.com', 3);

INSERT INTO prodejce
    VALUES (7, 'Gloria', 'Seaver', '801-605-5611', 'GloriaSeaver@email.com', 3);

INSERT INTO prodejce
    VALUES (8, 'Tristan', 'Coupart', '816-804-8241', 'TristanCoupart@email.com', 4);

INSERT INTO prodejce
    VALUES (9, 'Estelle', 'Laprise', '715-801-8386', 'EstelleLaprise@email.com', 4);
-------------------------------------------------------------------------------

-- vkladani hodnot do tabulky ZAKAZNIK (id, jmeno, prijmeni, tel-cislo, email)
INSERT INTO zakaznik
    VALUES (1, 'Brian', 'Galey', '091-357-3351', 'BrianHernandez@email.com');

INSERT INTO zakaznik
    VALUES (2, 'Elizabeth', 'Hicks', '070-534-7998', 'ElizabethHicks@email.com');

INSERT INTO zakaznik
    VALUES (3, 'Paige', 'Ballow', '108-876-3033', 'PaigeBallow@email.com');

INSERT INTO zakaznik
    VALUES (4, 'George', 'Clay', '923-439-0777', 'GeorgeClay@email.com');
-------------------------------------------------------------------------------    
    
-- vlozeni hodnot do tabulky STAV (id, nazev)
INSERT INTO stav VALUES (1, 'dostupne');
INSERT INTO stav VALUES (2, 'prodano');
-------------------------------------------------------------------------------

-- vlozeni hodnot do tabulky PRODUKT NA PRODEJNE (id, seriove-cislo, id_prodejna, id_produkt, id_stav)
-- produkty na prodejne 1
INSERT INTO produkt_na_prodejne
    VALUES (1, 'TYDLLVB5', 1, 1, 2);

INSERT INTO produkt_na_prodejne
    VALUES (2, '7LL4VLUH', 1, 1, 1);
--
INSERT INTO produkt_na_prodejne
    VALUES (3, 'HA8QJMTC', 1, 2, 1); 

INSERT INTO produkt_na_prodejne
    VALUES (4, 'AEP49JE4', 1, 2, 1); 
--
INSERT INTO produkt_na_prodejne
    VALUES (5, '595L5J9L', 1, 3, 1);    

INSERT INTO produkt_na_prodejne
    VALUES (6, '7D6H6KJN', 1, 3, 1);    
--
INSERT INTO produkt_na_prodejne
    VALUES (7, '5FVGTW87', 1, 4, 1);    

INSERT INTO produkt_na_prodejne
    VALUES (8, 'FMAZP4UE', 1, 4, 2);    
--
INSERT INTO produkt_na_prodejne
    VALUES (9, 'JCNUZX94', 1, 5, 2);    

INSERT INTO produkt_na_prodejne
    VALUES (10, 'PQAQDMCS', 1, 5, 1); 
--
INSERT INTO produkt_na_prodejne
    VALUES (11, '4RKDETAU', 1, 6, 1);    

INSERT INTO produkt_na_prodejne
    VALUES (12, '4RKDETAU', 1, 6, 2);    
--    
-- produkty na prodejne 2
INSERT INTO produkt_na_prodejne
    VALUES (13, 'JCQE3WWL', 2, 1, 2);    

INSERT INTO produkt_na_prodejne
    VALUES (14, '6BYGMKEX', 2, 1, 2);    
--    
INSERT INTO produkt_na_prodejne
    VALUES (15, 'DLJ8L42D', 2, 2, 1);    

INSERT INTO produkt_na_prodejne
    VALUES (16, 'FTNGYT7N', 2, 2, 2);    
--    
INSERT INTO produkt_na_prodejne
    VALUES (17, 'XBTLJREC', 2, 4, 1);    
    
INSERT INTO produkt_na_prodejne
    VALUES (18, '4556DTDA', 2, 4, 1);    
--    
INSERT INTO produkt_na_prodejne
    VALUES (19, 'BXTGGHEU', 2, 6, 1);    

INSERT INTO produkt_na_prodejne
    VALUES (20, '4U53RX52', 2, 6, 1);        
--    
-- produkty na prodejne 3
INSERT INTO produkt_na_prodejne
    VALUES (21, 'NKZ466V6', 3, 2, 1);  

INSERT INTO produkt_na_prodejne
    VALUES (22, '8KU5X5CL', 3, 2, 1);    
--
INSERT INTO produkt_na_prodejne
    VALUES (23, '4TGPKLH4', 3, 3, 2);    

INSERT INTO produkt_na_prodejne
    VALUES (24, 'T36JJHRH', 3, 3, 1);    
--
INSERT INTO produkt_na_prodejne
    VALUES (25, 'TLJ25L8S', 3, 6, 2);
  
INSERT INTO produkt_na_prodejne
    VALUES (26, '86H2UC2W', 3, 6, 1);   
--    
-- produkty na prodejne 4
INSERT INTO produkt_na_prodejne
    VALUES (27, '7CACKTRM', 4, 1, 2);    

INSERT INTO produkt_na_prodejne
    VALUES (28, '86RMUGCL', 4, 1, 1);   
--
INSERT INTO produkt_na_prodejne
    VALUES (29, 'RQQLXTWK', 4, 6, 1);    

INSERT INTO produkt_na_prodejne
    VALUES (30, '92ZMNVBU', 4, 6, 1);    
--
-------------------------------------------------------------------------------

-- vkladani hodnot do tabulky FAKTURA (id, datum vystaveni, datum splatnosti, id_prodejce, id_zakaznik)
INSERT INTO faktura 
    VALUES (1, TO_DATE('2021/01/03', 'yyyy/mm/dd'), TO_DATE('2021/01/03', 'yyyy/mm/dd'), 1, 2);

INSERT INTO faktura 
    VALUES (2, TO_DATE('2021/02/10', 'yyyy/mm/dd'), TO_DATE('2021/02/10', 'yyyy/mm/dd'), 1, 1);
    
INSERT INTO faktura 
    VALUES (3, TO_DATE('2021/03/03', 'yyyy/mm/dd'), TO_DATE('2021/03/03', 'yyyy/mm/dd'), 5, 2);
    
INSERT INTO faktura 
    VALUES (4, TO_DATE('2021/05/13', 'yyyy/mm/dd'), TO_DATE('2021/05/13', 'yyyy/mm/dd'), 8, 3);
    
INSERT INTO faktura 
    VALUES (5, TO_DATE('2021/08/21', 'yyyy/mm/dd'), TO_DATE('2021/08/21', 'yyyy/mm/dd'), 4, 4);    
    
INSERT INTO faktura 
    VALUES (6, TO_DATE('2021/11/03', 'yyyy/mm/dd'), TO_DATE('2021/11/03', 'yyyy/mm/dd'), 6, 2);
-------------------------------------------------------------------------------
 
-- vkladani hodnot do tabulky POLOZKA (id_faktura, id_produkt_na_prodejne)
INSERT INTO polozka VALUES (1, 1);

INSERT INTO polozka VALUES (1, 8);
    
INSERT INTO polozka VALUES (1, 9);
 
INSERT INTO polozka VALUES (2, 12);

INSERT INTO polozka VALUES (3, 14); 
 
INSERT INTO polozka VALUES (3, 16); 
   
INSERT INTO polozka VALUES (4, 27);

INSERT INTO polozka VALUES (5, 13);

INSERT INTO polozka VALUES (6, 23);

INSERT INTO polozka VALUES (6, 25);
