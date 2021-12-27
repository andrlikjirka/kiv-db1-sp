-- Testovaci scenar è.2 (testuje pohledy è. 2, 3, 4)
    -- Ziska pocty kusu dostupnych produkt_na_prodejne "Apple Fifth Avenue"
    -- Ziska zakoupene produkty zakaznika "Brian Galey"
    -- Vytvori fakturu noveho nakupu zakaznika "Brian Galey" na prodejne "Apple Fifth Avenue"
    -- Vlozi polozku s produkt_na_prodejne do faktury
    -- Zmeni stav prodaneho produkt_na_prodejne na "prodano"
    -- Ziska nove pocty kusu dostupnych produkt_na_prodejne "Apple Fifth Avenue"
    -- Ziska zakoupene produkty zakaznika "Brian Galey"
    
    
SAVEPOINT scenar2;

SELECT * FROM dostupne_produkty_na_prodejne;
SELECT * FROM zakoupene_produkty_zakaznika;

-- Brian Galey si zakoupi zbozi v prodejne Apple Fifth Avenue
-- pridani faktury na zakoupene zbozi  
INSERT INTO faktura 
    VALUES (7, TO_DATE('2021/12/01', 'yyyy/mm/dd'), TO_DATE('2021/12/01', 'yyyy/mm/dd'), 4, 1);

-- pridani polozky s danym produkt_na_prodejne na fakturu
INSERT INTO polozka VALUES (7, 18);

-- zmena stavu u daneho produktu na prodejne
UPDATE produkt_na_prodejne
    SET id_stav = 2
    WHERE id_produkt_na_prodejne = 18;

SELECT * FROM dostupne_produkty_na_prodejne;
SELECT * FROM zakoupene_produkty_zakaznika;

ROLLBACK TO scenar2;

