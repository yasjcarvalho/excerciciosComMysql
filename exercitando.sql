-- Busque os campos "id" e "name" da tabela "people" onde o valor do campo "id" seja menor ou igual a 10, e ordena os resultados pelo campo "name" em ordem ascendente (crescente).

SELECT id, name FROM people WHERE id <= 10 ORDER BY name ASC; 

-- Busque os campos "id" e "name" da tabela "people" onde o valor do campo "id" seja menor ou igual a 10, e ordena os resultados pelo campo "name" em ordem descendente (decrescente).

SELECT id, name FROM people WHERE id <= 10 ORDER BY name DESC; 

-- Ordene os primeiros 10 ID por ordem crescente de acordo com a data de nascimento.

SELECT id, name, birthdate FROM people WHERE id <= 10 ORDER BY birthdate ASC; 

-- Some a duração de todos os filmes

SELECT id, title and sum(duration) from films;

-- Média de duração de todos os filmes e ordene por título

SELECT id, title, AVG(duration) as average_duration FROM films ORDER BY title;

-- Qual filme tem duração máxima?
 
SELECT id, title, MAX(duration) as max_duration FROM films;

-- Qual filme tem duração mínima?

SELECT title, duration FROM films WHERE duration = (SELECT MIN(duration) FROM films);

-- Use o Between para capturar a pessoas entre id 2 e 5

select id, name from people WHERE id between 2 and 5;

-- Todos os filmes, e notas do imdb da tabela reviews que tem o ID menor ou igual a 10

select id, film_id, imdb_score from reviews WHERE id <= 10;

-- Até o ID 10, ordene a coluna facebook_likes de forma ascendente

SELECT id, film_id, facebook_likes FROM reviews WHERE id <= 10 ORDER BY facebook_likes ASC; 

-- A soma de todos os likes do facebook na tabela reviews

SELECT id, film_id, facebook_likes FROM reviews WHERE facebook_likes = (SELECT SUM(facebook_likes) FROM reviews);

-- Use o between de forma livre na tabela reviews

SELECT id, film_id, facebook_likes FROM reviews WHERE id between 10 and 15;