INSERT INTO Equipe (id_equipe, nome_equipe) VALUES
(1, 'Arsenal'),
(2, 'Aston Villa'),
(3, 'Bournemouth'),
(4, 'Brentford'),
(5, 'Brighton & Hove Albion'),
(6, 'Chelsea'),
(7, 'Crystal Palace'),
(8, 'Everton'),
(9, 'Fulham'),
(10, 'Leeds United'),
(11, 'Leicester City'),
(12, 'Liverpool'),
(13, 'Manchester City'),
(14, 'Manchester United'),
(15, 'Newcastle United'),
(16, 'Nottingham Forest'),
(17, 'Sheffield United'),
(18, 'Southampton'),
(19, 'Tottenham Hotspur'),
(20, 'West Ham United'),
(21, 'Wolverhampton Wanderers'),
(22, 'Burnley'),
(23, 'Norwich City'),
(24, 'Watford');


-- Top 10 Artilheiros da Premier League 2024/25
INSERT INTO Jogador (id_jogador, nome_jogador, id_equipe, partidas, gols, assistencias, nacionalidade, idade) VALUES
(1, 'Mohamed Salah', 12, 38, 29, 18, 'Egípcio', 32),
(2, 'Alexander Isak', 15, 36, 23, 9, 'Sueco', 26),
(3, 'Erling Haaland', 13, 34, 22, 7, 'Norueguês', 24),
(4, 'Chris Wood', 16, 33, 20, 5, 'Neozelandês', 33),
(5, 'Bryan Mbeumo', 4, 35, 20, 8, 'Camaronês', 28),
(6, 'Yoane Wissa', 4, 34, 19, 6, 'Francês', 27),
(7, 'Ollie Watkins', 2, 36, 16, 7, 'Inglês', 29),
(8, 'Matheus Cunha', 21, 34, 15, 5, 'Brasileiro', 25),
(9, 'Cole Palmer', 6, 32, 15, 6, 'Inglês', 22),
(10, 'Jean-Philippe Mateta', 7, 33, 14, 4, 'Francês', 26);


-- Líderes de Assistências da Premier League 2024/25
INSERT INTO Jogador (id_jogador, nome_jogador, id_equipe, partidas, gols, assistencias, nacionalidade, idade) VALUES
(11, 'Mohamed Salah', 12, 38, 29, 18, 'Egípcio', 32),
(12, 'Jacob Murphy', 15, 35, 8, 12, 'Inglês', 30),
(13, 'Anthony Elanga', 16, 34, 10, 11, 'Sueco', 23),
(14, 'Bukayo Saka', 1, 37, 10, 10, 'Inglês', 23),
(15, 'Mikkel Damsgaard', 4, 33, 7, 10, 'Dinamarquês', 24),
(16, 'Antonee Robinson', 9, 32, 3, 10, 'Americano', 27),
(17, 'Morgan Rogers', 2, 31, 5, 10, 'Inglês', 23),
(18, 'Bruno Fernandes', 14, 36, 9, 10, 'Português', 30),
(19, 'Heung-min Son', 19, 38, 13, 9, 'Sul-coreano', 33),
(20, 'Savinho', 13, 34, 4, 8, 'Brasileiro', 21);


-- Técnicos da Premier League 2024/25
INSERT INTO Treinador (id_treinador, nome, nacionalidade, idade, id_equipe) VALUES
(1, 'Mikel Arteta', 'Espanhol', 42, 1),
(2, 'Unai Emery', 'Espanhol', 53, 2),
(3, 'Andoni Iraola', 'Espanhol', 41, 3),
(4, 'Keith Andrews', 'Irlandês', 43, 4),
(5, 'Fabian Hürzeler', 'Alemão', 32, 5),
(6, 'Enzo Maresca', 'Italiano', 44, 6),
(7, 'Oliver Glasner', 'Alemão', 50, 7),
(8, 'David Moyes', 'Escocês', 62, 8),
(9, 'Marco Silva', 'Português', 47, 9),
(10, 'Daniel Farke', 'Alemão', 48, 10),
(11, 'Arne Slot', 'Holandês', 46, 11),
(12, 'Pep Guardiola', 'Espanhol', 54, 13),
(13, 'Ruben Amorim', 'Português', 40, 14),
(14, 'Eddie Howe', 'Inglês', 47, 15),
(15, 'Steve Cooper', 'Galês', 44, 16),
(16, 'Javi Gracia', 'Espanhol', 54, 17),
(17, 'Nathan Jones', 'Galês', 51, 18),
(18, 'Nuno Espírito Santo', 'Português', 51, 19),
(19, 'David Moyes', 'Escocês', 62, 20),
(20, 'Julen Lopetegui', 'Espanhol', 53, 21),
(21, 'Scott Parker', 'Inglês', 44, 22),
(22, 'Gary O’Neil', 'Inglês', 41, 23),
(23, 'Chris Wilder', 'Inglês', 57, 24);


-- Estádios da Premier League 2024/25
INSERT INTO Estadio (id_estadio, nome, capacidade, cidade, id_equipe) VALUES
(1, 'Emirates Stadium', 60260, 'Londres', 1),
(2, 'Villa Park', 42682, 'Birmingham', 2),
(3, 'Vitality Stadium', 11000, 'Bournemouth', 3),
(4, 'Gtech Community Stadium', 17250, 'Brentford', 4),
(5, 'Amex Stadium', 30750, 'Brighton', 5),
(6, 'Stamford Bridge', 40742, 'Londres', 6),
(7, 'Selhurst Park', 26000, 'Londres', 7),
(8, 'Goodison Park', 39572, 'Liverpool', 8),
(9, 'Craven Cottage', 25000, 'Londres', 9),
(10, 'Elland Road', 37971, 'Leeds', 10),
(11, 'King Power Stadium', 32262, 'Leicester', 11),
(12, 'Anfield', 54074, 'Liverpool', 12),
(13, 'Etihad Stadium', 53457, 'Manchester', 13),
(14, 'Old Trafford', 74879, 'Manchester', 14),
(15, 'St. James’ Park', 52305, 'Newcastle', 15),
(16, 'City Ground', 30000, 'Nottingham', 16),
(17, 'Bramall Lane', 32500, 'Sheffield', 17),
(18, 'St Mary’s Stadium', 32600, 'Southampton', 18),
(19, 'Tottenham Hotspur Stadium', 62500, 'Londres', 19),
(20, 'London Stadium', 60000, 'Londres', 20),
(21, 'Molineux Stadium', 31800, 'Wolverhampton', 21),
(22, 'Turf Moor', 22000, 'Burnley', 22),
(23, 'Carrow Road', 27000, 'Norwich', 23),
(24, 'Vicarage Road', 22000, 'Watford', 24);



INSERT INTO Maiores_Campeoes (time, quantidade) VALUES
('Manchester United', 20),
('Liverpool', 20),
('Arsenal', 13),
('Chelsea', 6),
('Manchester City', 10),
('Everton', 9),
('Aston Villa', 7),
('Tottenham Hotspur', 2);
