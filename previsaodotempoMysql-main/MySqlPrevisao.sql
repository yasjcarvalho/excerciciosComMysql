create table previsaotempo(
id integer auto_increment primary key,
dia varchar (10),
cidade varchar(50),
min_temp decimal,
max_temp decimal,
condicao varchar(50),
data_atual date
);

insert into previsaotempo values 
(default, "Seg", "Arapiraca", 21, 30, "Ensolarado", "2022-12-01"),
(default, "Ter", "Arapiraca", 25, 27, "Chuvas esparsas", "2022-12-02"),
(default, "Qua", "Arapiraca", 23, 32, "Parcialmente nublado", "2022-12-03"),
(default, "Qui", "Arapiraca", 22, 33, "Nublado", "2022-12-04"),
(default, "Sex", "Arapiraca", 23, 32, "Chuvoso", "2022-12-05"),
(default, "Sab", "Arapiraca", 21, 33, "Precipitação", "2022-12-06"),
(default, "Dom", "Arapiraca", 21, 30, "Chuvas esparsas", "2022-12-07")

insert into previsaotempo values 
(default, "Seg", "Maceió", 21, 30, "Ensolarado", "2022-12-12"),
(default, "Ter", "Maceió", 25, 27, "Chuvas esparsas", "2022-12-13"),
(default, "Qua", "Maceió", 23, 32, "Parcialmente nublado", "2022-12-14"),
(default, "Qui", "Maceió", 22, 33, "Nublado", "2022-12-15"),
(default, "Sex", "Maceió", 23, 32, "Chuvoso", "2022-12-16"),
(default, "Sab", "Maceió", 21, 33, "Precipitação", "2022-12-17"),
(default, "Dom", "Maceió", 21, 30, "Chuvas esparsas", "2022-12-18")

insert into previsaotempo values 
(default, "Seg", "Rio Largo", 21, 32, "Ensolarado", "2022-12-21"),
(default, "Ter", "Rio Largo", 23, 33, "Chuvas esparsas", "2022-12-22"),
(default, "Qua", "Rio Largo", 21, 32, "Parcialmente nublado", "2022-12-23"),
(default, "Qui", "Rio Largo", 26, 33, "Nublado", "2022-12-24"),
(default, "Sex", "Rio Largo", 25, 32, "Chuvoso", "2022-12-25"),
(default, "Sab", "Rio Largo", 24, 33, "Precipitação", "2022-12-26"),
(default, "Dom", "Rio Largo", 19, 34, "Chuvas esparsas", "2022-12-27")

select * from previsaotempo;

SELECT cidade, max(max_temp), min(min_temp) FROM previsaotempo GROUP BY cidade; /*MIN = Valor Mínimo de um conjunto de valores. MAX = Valor Máximo de um conjunto de valores.*/
SELECT cidade, AVG((max_temp + min_temp)/2) FROM previsaotempo GROUP BY cidade; /*A função AVG() retorna o valor médio de uma expressão.*/
SELECT cidade, condicao, COUNT(*) FROM previsaotempo GROUP BY cidade, condicao; /*COUNT = Contar quantidade total de itens*/

SELECT cidade, condicao, dia, data_atual FROM previsaotempo GROUP BY cidade, condicao, dia, data_atual;

SELECT cidade, dia, data_atual, condicao FROM previsaotempo WHERE condicao = "chuvoso" ORDER BY cidade, dia, data_atual, condicao; 
SELECT cidade, dia, data_atual, condicao FROM previsaotempo WHERE condicao = "ensolarado" GROUP BY cidade, dia, data_atual, condicao;
SELECT cidade, max_temp, dia, COUNT(*) FROM previsaotempo GROUP BY cidade, max_temp, dia ORDER BY cidade, max_temp, dia;
