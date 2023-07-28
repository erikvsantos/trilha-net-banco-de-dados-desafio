--1

SELECT 
	Nome, 
	Ano 
FROM Filmes

-- 2

SELECT * FROM Filmes
ORDER BY Ano

-- 3

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- 4

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

-- 5

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano >= 2000

-- 6

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100
	AND Duracao < 150
ORDER BY Duracao

-- 7

SELECT
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8

SELECT * FROM Atores
WHERE Genero = 'M'

-- 9

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10

SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11

SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio'

-- 12

SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Atores
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
	
