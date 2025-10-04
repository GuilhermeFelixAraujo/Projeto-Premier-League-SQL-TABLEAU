-- Criando Tabelas 

CREATE TABLE Equipe (
    id_equipe INT PRIMARY KEY,
    nome_equipe VARCHAR(255) UNIQUE
);



CREATE TABLE Jogador (
    id_jogador INT PRIMARY KEY,
    nome_jogador VARCHAR(255),
    id_equipe INT,
    partidas INT,
    gols INT,
    assistencias INT,
    nacionalidade VARCHAR(100),
    idade INT,
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);




CREATE TABLE Maiores_Campeoes (
    time VARCHAR(255) PRIMARY KEY,
    quantidade INT
);


CREATE TABLE Estadio (
    id_estadio INT PRIMARY KEY,
    nome VARCHAR(255),
    capacidade INT,
    cidade VARCHAR(255),
    id_equipe INT,
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);




CREATE TABLE Treinador (
    id_treinador INT PRIMARY KEY,
    nome VARCHAR(255),
    nacionalidade VARCHAR(100),
    idade INT,
    id_equipe INT,
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);
















