-- Joins, queries, estatísticas

-- (1.Old Trafford - 74.879, 2.London Stadium - 62.500, Tottenham Hotspur Stadium - 3.62.850)
select * from estadio 
where capacidade >= 60000





-- (1.Manchester United- 20,2. Liverpool-19, 3.Arsenal-13, 4.Manchester City-10 )
select time, quantidade  from maiores_campeoes 
order by quantidade  desc
limit 4
offset 0;




-- case aqui entra como um 'IF'
select  nome, idade , 
    case 
    	when idade < 40 then 'Novo'
      	when idade between 40 and 55 then 'Na Média'
      	else 'Acima'
      end as idade_treinadores
    from treinador;


-- Números e Porcentagens da nacionalidade dos artilheiros
SELECT
    SUM(CASE WHEN nacionalidade IN (
        'Inglês','Sueco','Dinamarquês','Português'
    ) THEN 1 ELSE 0 END) AS Europeus,

    SUM(CASE WHEN nacionalidade IN (
        'Egípcio','Costa do Marfim'
    ) THEN 1 ELSE 0 END) AS Africanos,

    SUM(CASE WHEN nacionalidade IN (
        'Brasileiro','Americano','Argentino','Uruguaio'
    ) THEN 1 ELSE 0 END) AS Latinos
FROM Jogador;



create table nacionalidade_percentuais as 
SELECT
    ROUND(
        SUM(CASE WHEN nacionalidade IN ('Inglês','Sueco','Dinamarquês','Português') THEN 1 ELSE 0 END) 
        * 100.0 / COUNT(*), 2
    ) AS percentual_europeus,

    ROUND(
        SUM(CASE WHEN nacionalidade IN ('Egípcio','Costa do Marfim') THEN 1 ELSE 0 END) 
        * 100.0 / COUNT(*), 2
    ) AS percentual_africanos,

    ROUND(
        SUM(CASE WHEN nacionalidade IN ('Brasileiro','Americano','Argentino','Uruguaio') THEN 1 ELSE 0 END) 
        * 100.0 / COUNT(*), 2
    ) AS percentual_latinos
FROM Jogador;





-- Média idade Treinadores =  49 , min = 38 e max =  62 
create table dados as 
select 
    avg(idade) as media_idade_treinador,
    min(idade) as min_idade_treinador, 
    max(idade) as max_idade_treiandor
from treinador;
select *  from dados





-- Juntando tabelas nome da Equipe, Nome do estádio e capacidade dos mesmos.
create table equipe_estadio as 
select 
    nome_equipe,
    nome as nome_estadio, 
    capacidade
 from equipe 
 join estadio on equipe.id_equipe = estadio.id_equipe ;

select * from equipe_estadio;





-- Equipes com  maiores estádios Premier League = Manchester United - 74,879
create table maiores_estadios as
select nome_equipe, nome_estadio,capacidade 
from equipe_estadio
group by nome_equipe, nome_estadio, capacidade
order by capacidade desc;

select * from maiores_estadios ; 


 



-- Criando tabela_equipe jogador para análises
create table equipe_jogador as
select 
    nome_equipe,
    nome_jogador 
 from equipe 
 join jogador on equipe.id_equipe = jogador.id_equipe ;

select * from equipe_jogador; 





-- Times com maior quantidade de goleadores na Temporada = Brentford - 3 
select nome_equipe, count(nome_jogador) as qnt_goleadores_equipe
from equipe_jogador  
group by nome_equipe  
order by qnt_goleadores_equipe  desc;









