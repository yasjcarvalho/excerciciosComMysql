CREATE TABLE carro (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100),
    montadora VARCHAR(100),
    ano INTEGER,
    cor VARCHAR(20),
    estoque INTEGER
);

INSERT INTO carro  VALUES
(1, 'Fit', 'Honda', 1987, 'Azul', 4),
(2, 'Pálio', 'Fiat', 1999, 'Prata', 7),
(3, 'Ka', 'Ford', 1989, 'Vermelho', 2),
(4, 'R8', 'Audi', 1998, 'Verde', 0),
(5, 'Siena', 'Fiat', 2006, 'Amarelo', 4),
(6, 'Strada', 'Fiat', 1990, 'Vermelho', 0),
(7, 'A3', 'Audi', 1987, 'Prata', 6),
(8, 'Civic', 'Honda', 2007, 'Azul', 0),
(9, 'Fiesta', 'Ford', 1999, 'Laranja', 2),
(10, 'Focus', 'Ford', 2009, 'Amarelo', 0),
(11, 'Mobi', 'Fiat', 2019, 'Preto', 3),
(12, 'A4', 'Audi', 2020, 'Rosa', 5),
(13, 'Velox', 'Ford', 2021, 'Roxo', 2),
(14, 'Weed', 'Honda', 2022, 'Laranja', 8);


SELECT * FROM carro;

-- 1
 SELECT modelo, ano FROM carro WHERE UPPER(montadora) = 'Fiat' order by ano;
 -- 2
 SELECT * FROM carro WHERE estoque >= 3;
 -- 3
 SELECT * FROM carro WHERE cor like 'V%';
 -- 4
 SELECT * FROM carro WHERE ano >= (year(now()) - 20);
 -- 5
 SELECT * FROM carro WHERE LENGTH(montadora) = 4;
 -- 6
 SELECT * FROM carro ORDER BY estoque desc limit 1;
 -- 7
 SELECT * FROM carro ORDER BY ano limit 4;
 -- 8
 SELECT * FROM carro WHERE ano > 2000;
 -- 9 
 SELECT * FROM carro WHERE ano %2 = 0;
 -- 10
 SELECT * FROM carro WHERE montadora = 'Fiat' ORDER BY estoque limit 1;
 -- 11
 SELECT * FROM carro WHERE montadora = 'Audi' AND (cor = 'Prata' or cor = 'Verde'); 
 -- 12
  SELECT * FROM carro WHERE montadora = 'Fiat' AND (cor = 'Vermelho' OR cor = 'Amarelo') AND modelo like 'S%' and estoque >= 1;
 -- 13 
 SELECT modelo, montadora, ano, cor, estoque FROM carro WHERE estoque > 0 ORDER BY ano LIMIT 5;
 -- 14
 SELECT * FROM carro WHERE ano >= (year(now()) - 4) AND estoque >=2 AND estoque <=8;
 -- 15
 SELECT * FROM carro WHERE montadora = 'Honda' ORDER BY estoque;