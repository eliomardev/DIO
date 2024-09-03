CREATE DATABASE Filmes;

USE Filmes;

CREATE TABLE Filme(
	IdFilme INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50),
	Ano INT(4),
	Duracao INT(5)
);

CREATE TABLE Atores(
	IdAtores INT PRIMARY KEY AUTO_INCREMENT,
	PrimeiroNome VARCHAR(20),
	UltimoNome VARCHAR(20),
	Genero VARCHAR(1)
);

CREATE TABLE ElencoFilme(
	IdElencoFilme INT PRIMARY KEY AUTO_INCREMENT,
	Id_Atores INT,
	Id_Filme INT,
	Papel VARCHAR(50),
	FOREIGN KEY (Id_Atores) REFERENCES Atores(IdAtores),
	FOREIGN KEY (Id_Filme) REFERENCES Filme(IdFilme)
);

CREATE TABLE FilmeGenero(
	IdFilmeGenero INT PRIMARY KEY AUTO_INCREMENT,
	Id_Genero INT,
	Id_Filme INT,
	FOREIGN KEY (Id_Genero) REFERENCES Genero(IdGenero),
	FOREIGN KEY (Id_Filme) REFERENCES Filme(IdFilme)
);

CREATE TABLE Genero(
	IdGenero INT PRIMARY KEY AUTO_INCREMENT,
	Genero VARCHAR(20)
);

INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'James', 'Stewart', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Deborah', 'Kerr', 'F');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Peter', 'OToole', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Robert', 'DeNiro', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Harrison', 'Ford', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Stephen', 'Baldwin', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Jack', 'Nicholson', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Mark', 'Wahlberg', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Woody', 'Allen', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Claire', 'Danes', 'F');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Tim', 'Robbins', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Kevin', 'Spacey', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Kate', 'Winslet', 'F');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Robin', 'Williams', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Jon', 'Voight', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Ewan', 'McGregor', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Christian', 'Bale', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Dev', 'Patel', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Sigourney', 'Weaver', 'F');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'David', 'Aston', 'M');
INSERT INTO Atores (IdAtores, PrimeiroNome, UltimoNome, Genero) VALUES (NULL, 'Ali', 'Astin', 'F');

INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Um Corpo que Cai', 1958, 128);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Os Inocentes', 1961, 100);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Lawrence da Arábia', 1962, 216);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'O Franco Atirador', 1978, 183);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Amadeus', 1984, 160);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Blade Runner', 1982, 117);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'De Olhos Bem Fechados', 1999, 159);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Os Suspeitos', 1995, 106);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Chinatown', 1974, 130);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Boogie Nights - Prazer Sem Limites', 1997, 155);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Noivo Neurótico, Noiva Nervosa', 1977, 93);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Princesa Mononoke', 1997, 134);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Um Sonho de Liberdade', 1994, 142);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Beleza Americana', 1999, 122);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Titanic', 1997, 194);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Gênio Indomável', 1997, 126);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Amargo Pesadelo', 1972, 109);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Trainspotting - Sem Limites', 1996, 94);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'O Grande Truque', 2006, 130);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Donnie Darko', 2001, 113);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Quem Quer Ser um Milionário?', 2008, 120);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Aliens, O Resgate', 1986, 137);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Uma Vida sem Limites', 2004, 118);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Avatar', 2009, 162);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Coração Valente', 1995, 178);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'Os Sete Samurais', 1954, 207);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'A Viagem de Chihiro', 2001, 125);
INSERT INTO Filme (IdFilme, Nome, Ano, Duracao) VALUES (NULL, 'De Volta para o Futuro', 1985, 116);

ALTER TABLE ElencoFilme
MODIFY COLUMN Papel VARCHAR(50);

INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 1, 1, 'John Scottie Ferguson');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 2, 2, 'Miss Giddens');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 3, 3, 'T.E. Lawrence');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 4, 4, 'Michael');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 6, 6, 'Rick Deckard');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 7, 8, 'McManus');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 9, 10, 'Eddie Adams');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 10, 11, 'Alvy Singer');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 11, 12, 'San');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 12, 13, 'Andy Dufresne');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 13, 14, 'Lester Burnham');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 14, 15, 'Rose DeWitt Bukater');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 15, 16, 'Sean Maguire');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 16, 17, 'Ed');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 17, 18, 'Renton');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 19, 20, 'Elizabeth Darko');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 20, 21, 'Older Jamal');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 21, 22, 'Ripley');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 13, 23, 'Bobby Darin');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 8, 9, 'J.J. Gittes');
INSERT INTO ElencoFilme (IdElencoFilme, Id_Atores, Id_Filme, Papel) VALUES (NULL, 18, 19, 'Alfred Borden');

DROP TABLE ElencoFilme;

INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Ação');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Aventura');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Animação');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Biografia');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Comédia');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Crime');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Drama');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Horror');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Musical');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Mistério');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Romance');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Suspense');
INSERT INTO Genero (IdGenero, Genero) VALUES (NULL, 'Guerra');

INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 1, 22);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 2, 17);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 2, 3);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 3, 12);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 5, 11);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 6, 8);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 6, 13);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 7, 26);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 7, 28);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 7, 18);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 7, 21);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 8, 2);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 9, 23);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 10, 7);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 10, 27);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 10, 1);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 11, 14);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 12, 6);
INSERT INTO FilmeGenero (IdFilmeGenero, Id_Genero, Id_Filme) VALUES (NULL, 13, 4);

SELECT nome, ano FROM filme;

SELECT nome, ano FROM filme
ORDER by ano;

SELECT nome, ano, Duracao FROM filme
WHERE nome = 'De Volta para o Futuro';

SELECT nome, ano, Duracao FROM filme
WHERE ano = 1997;

SELECT nome, ano, Duracao FROM filme
WHERE ano > 2000;

SELECT nome, ano, Duracao FROM filme
WHERE Duracao > 100 AND Duracao < 150
ORDER by Duracao;

SELECT Ano,
       COUNT(*) AS Quantidade
FROM Filme
GROUP BY Ano
ORDER BY Quantidade DESC;

SELECT * from Atores
WHERE Genero = 'M';

SELECT * from Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

SELECT Nome, Genero 
from Filme
inner join Filme.IdFilme = FilmeGenero.Id_Filme
inner join FilmeGenero.Id_Genero = Genero.IdGenero;

SELECT f.Nome, g.Genero
FROM Filme f
INNER JOIN FilmeGenero fg ON f.IdFilme = fg.Id_Filme
INNER JOIN Genero g ON fg.Id_Genero = g.IdGenero;

SELECT f.Nome, g.Genero
FROM Filme f
INNER JOIN FilmeGenero fg ON f.IdFilme = fg.Id_Filme
INNER JOIN Genero g ON fg.Id_Genero = g.IdGenero
WHERE g.Genero = 'Mistério';

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filme f
INNER JOIN ElencoFilme ef ON f.IdFilme = ef.Id_Filme
INNER JOIN Atores a ON ef.Id_Atores = a.IdAtores;



