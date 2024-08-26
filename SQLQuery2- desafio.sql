--1
SELECT 
Nome,
Ano
FROM Filmes

--2
SELECT
F.Nome,
G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id

--3
SELECT
F.Nome,
G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

--4
SELECT
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.IdFilme
INNER JOIN Atores A ON A.Id = E.IdAtor

--5
SELECT * FROM Filmes
ORDER BY Ano ASC

--6
SELECT
Nome,
Ano,
Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

--7
SELECT
*
FROM Filmes
WHERE Ano = 1997

--8
SELECT
*
FROM Filmes
WHERE Ano > 2000

--9
SELECT 
*
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--10
SELECT
Ano,
COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--11
SELECT
*
FROM Atores
WHERE Genero = 'M'

--12
SELECT
*
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome
