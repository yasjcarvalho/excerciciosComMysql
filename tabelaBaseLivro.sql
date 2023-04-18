CREATE TABLE livros (
  ID INT NOT NULL AUTO_INCREMENT,
  Titulo VARCHAR(255) NOT NULL,
  Autor VARCHAR(255) NOT NULL,
  Categoria VARCHAR(255) NOT NULL,
  Estoque DECIMAL(10,2),
  Preco DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO livros (Titulo, Autor, Categoria, Estoque, Preco)
VALUES ( 'O autor da compadecida', 'Ariano Suassuna', 'romance', 3 , 14.9),
       ( 'O amor se esqueceu de começar', 'Fabrício Carpinejar', 'romance', 2, 23.5),
       ( 'Canalha!', 'Fabrício Carpinejar', 'romance', 0, 27.4),
       ( 'O casamento suspeitoso', 'Ariano Suassuna', 'romance', 2, 21),
       ( 'A pena e a lei', 'Ariano Suassuna', 'poesia', 0, 12.4),
       ( 'O mundo é pleno', 'Diego Cruz', 'economia', 2, 32),
       ( 'A verdadeira historia do Brasil', 'Fernando Pessoa', 'historia', 4, 21.4),
       ('A menina que roubava livros', 'Diego Cruz', 'romance', 0, 21.3),
       ( 'O caçador de Pipas', 'Ivan Lins', 'romance', 0, 28),
       ( 'A 2º Guerra', 'Túlio Campelo', 'historia', 4, 43),
       ( 'Memórias', 'Diego Cruz', 'romance', 21, 11.5),
       ( 'Pai rico, Pai pobre', 'Arthur Lessa', 'economia', 3, 12.3);

select * from livros WHERE Categoria = 'economia' AND Estoque >= 1 ORDER BY Titulo ASC;
select * from livros WHERE Categoria = 'romance' ORDER BY Preco ASC Limit 5;
SELECT COUNT(*) FROM livros WHERE Autor = 'José Saramago' AND Estoque > 0;
select Preco from livros WHERE id = '7';
SELECT COUNT(*) FROM livros WHERE Categoria = 'romance' and Autor = 'Fabrício Carpinejar' AND Estoque >= 0;
SELECT Titulo, Estoque FROM livros WHERE Estoque = (SELECT MAX(Estoque) FROM livros);
SELECT Titulo, Preco FROM livros WHERE Estoque = 0;
SELECT * FROM livros WHERE Autor = 'Ariano Suassuna' AND Estoque = 0;
SELECT * FROM livros WHERE Categoria = 'economia' ORDER BY Preco DESC LIMIT 1;
SELECT * FROM livros WHERE Categoria = 'romance' AND Estoque > 0 ORDER BY Estoque ASC LIMIT 1;
SELECT * FROM livros WHERE Estoque > 0 AND Preco > 20;
SELECT * FROM livros WHERE Titulo LIKE 'A%';
SELECT * FROM livros WHERE Autor = 'Diego Cruz' AND Categoria = 'romance' ORDER BY Preco ASC LIMIT 1;
SELECT * FROM livros WHERE Categoria = 'romance' AND Preco BETWEEN 10 AND 50 AND Estoque >= 2;
SELECT * FROM livros WHERE Autor LIKE '% Cruz%';

SELECT * FROM livros WHERE Categoria = 'economia' ORDER BY Preco DESC LIMIT 1;



SELECT * FROM livros WHERE Categoria = 'romance' AND Estoque > 0 AND Preco < 30;
SELECT * FROM livros WHERE Autor = 'Ariano Suassuna' AND Estoque > 0;
SELECT * FROM livros WHERE Categoria = 'economia' AND Estoque > 5 AND Preco BETWEEN 20 AND 50;







SELECT * FROM livros