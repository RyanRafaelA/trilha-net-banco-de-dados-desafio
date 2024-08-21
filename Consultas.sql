use Filmes

-- 1: Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2: Buscar o nome e ano dos filmes, ordenados por ordem creescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY ano;

-- 3:Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4: Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE ano = 1997;

-- 5: Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000;

-- 6: Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

-- 7: Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores

-- 9: Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10: Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero From Filmes f
INNER Join FilmesGenero ON f.id = FilmesGenero.IdFilme 
INNER JOIN Generos g ON g.Id = FilmesGenero.IdGenero;

-- 11: Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero FROM Filmes F
INNER JOIN FilmesGenero ON f.Id = FilmesGenero.IdFilme
INNER JOIN Generos g ON g.Id = FilmesGenero.IdGenero
WHERE g.Genero = 'Mistério';

-- 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel FROM Filmes f
INNER JOIN ElencoFilme e ON f.Id = e.IdFilme
INNER JOIN Atores a ON a.Id = e.IdAtor;