# Projeto-Premier-League-SQL-TABLEAU

# Projeto de Análise da Premier League 2024/25

Este repositório contém um projeto de **análise de dados da Premier League** 2024/25, utilizando **SQL**L para manipulação e organização dos dados e **Tableau** para visualização de métricas, gráficos e insights.

O objetivo é explorar informações sobre equipes, jogadores, treinadores e estádios, analisando desempenho, nacionalidade, idade, títulos e capacidades de estádios.

---

## Estrutura do Projeto

- **sql/**
  - `01_criacao_tabelas.sql` – Criação das tabelas
  - `02_inserts.sql` – Inserts de dados
  - `03_queries_estatisticas.sql` – Consultas de análise (maiores estádios, campeões, goleadores, etc.)
- **tableau/**
  - `painel_premier_24_25.twbx` – Dashboard interativo
  - `painel_screenshot.png` – Print do dashboard (opcional)
- `README.md` – Descrição do projeto




---

## Tabelas e Dados

O projeto contém as seguintes tabelas:

1. **Equipe** – Informações sobre cada time da Premier League 24/25 (`id_equipe`, `nome_equipe`, `cidade`, `pais`, `titulos`).  
2. **Jogador** – Informações sobre jogadores (`id_jogador`, `nome_jogador`, `id_equipe`, `posicao`, `idade`, `nacionalidade`, `partidas`, `gols`, `assistencias`).  
3. **Maiores_Campeoes** – Títulos históricos por equipe (`id_equipe`, `quantidade`).  
4. **Estadio** – Informações sobre os estádios (`id_estadio`, `nome`, `capacidade`, `cidade`, `pais`, `id_equipe`).  
5. **Treinador** – Informações sobre treinadores (`id_treinador`, `nome`, `nacionalidade`, `idade`, `titulos`, `id_equipe`).  

---

## Principais Análises em SQL

### 1. Estádios com maior capacidade
```sql
SELECT * FROM estadio WHERE capacidade >= 60000;
resultado: Old Trafford (74.879), London Stadium (62.500), Tottenham Hotspur Stadium (62.850).

### 2. Maiores campeões históricos
SELECT time, quantidade 
FROM maiores_campeoes 
ORDER BY quantidade DESC 
LIMIT 4;

Top 4: Manchester United, Liverpool, Arsenal, Manchester City.


3. Classificação de treinadores por idade
SELECT nome, idade,
    CASE 
        WHEN idade < 40 THEN 'Novo'
        WHEN idade BETWEEN 40 AND 55 THEN 'Na Média'
        ELSE 'Acima'
    END AS idade_treinadores
FROM treinador;


4. Distribuição de nacionalidades dos jogadores
SELECT
    SUM(CASE WHEN nacionalidade IN ('Inglês','Sueco','Dinamarquês','Português') THEN 1 ELSE 0 END) AS Europeus,
    SUM(CASE WHEN nacionalidade IN ('Egípcio','Costa do Marfim') THEN 1 ELSE 0 END) AS Africanos,
    SUM(CASE WHEN nacionalidade IN ('Brasileiro','Americano','Argentino','Uruguaio') THEN 1 ELSE 0 END) AS Latinos
FROM Jogador;


5. Times com mais goleadores
SELECT nome_equipe, COUNT(nome_jogador) AS qnt_goleadores_equipe
FROM equipe_jogador
GROUP BY nome_equipe
ORDER BY qnt_goleadores_equipe DESC;
Resultado : Brentford – 3 artilheiros na temporada.

---
Dashboard Tableau
O dashboard (.twbx) permite:
Visualizar times com maiores estádios.
Comparar quantidade de títulos e campeões históricos.
Explorar distribuição de nacionalidade dos jogadores.
Analisar idade dos treinadores.
Avaliar quantidade de goleadores por equipe.
Para interatividade completa, abra o dashboard no Tableau Desktop ou Tableau Public.

Como Usar
Abra o arquivo SQL premier_league_24_25.sql no DBeaver ou outro SGBD compatível.
Execute as queries para criar tabelas e inserir os dados.
Abra o arquivo Tableau dashboard_premier_24_25.twbx para explorar os gráficos.
Use os filtros e medidas para gerar insights sobre a Premier League 24/25.

Autor
Guilherme Felix Araujo da Silva
Projeto desenvolvido como portfólio de análise de dados, com foco em futebol e Premier League.
