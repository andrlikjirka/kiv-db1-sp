-- Testovaci scenar �.1 (testuje pohled �.1)
    -- Ziska pocet prodejen v metropolich
    -- Prida prodejnu do metropole "Pariz"
    -- Ziska novy pocet prodejen v metropolich (=> pocet +1)


SAVEPOINT scenar1;

SELECT * FROM prodejny_v_metropolich;

INSERT INTO prodejna
    VALUES (5, 'Apple March� Saint-Germain', 'Rue Cl�ment', 9, 75006, 3);

SELECT * FROM prodejny_v_metropolich;

ROLLBACK TO scenar1;
