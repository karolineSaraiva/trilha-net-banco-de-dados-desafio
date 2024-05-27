-- 1
SELECT 
	Nome, Ano 
FROM Filmes 


-- 2
SELECT 
	*
FROM Filmes 
ORDER BY Ano 


-- 3
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'


-- 4
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997


-- 5
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000


-- 6
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao


-- 7 
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC


-- 8
SELECT 
	PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'


-- 9 
SELECT 
	PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10
SELECT 
	F.Nome,
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F On FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id


-- 11
SELECT 
	F.Nome,
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F On FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE Genero = 'Mistério'


-- 12
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM ElencoFilme EF
INNER JOIN Filmes F On EF.IdFilme = F.Id
INNER JOIN Atores A ON EF.IdAtor = A.Id