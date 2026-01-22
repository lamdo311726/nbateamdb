INSERT INTO Teams (name, city, conference, division) VALUES
('Lakers', 'Los Angeles', 'West', 'Pacific'),
('Celtics', 'Boston', 'East', 'Atlantic');

INSERT INTO Players (first_name, last_name, dob, height_in, weight_lb, position, draft_year, draft_pick) VALUES
('LeBron', 'James', '1984-12-30', 81, 250, 'SF', 2003, 1),
('Anthony', 'Davis', '1993-03-11', 82, 253, 'PF', 2012, 1),
('Jayson', 'Tatum', '1998-03-03', 80, 210, 'SF', 2017, 3),
('Jaylen', 'Brown', '1996-10-24', 78, 223, 'SG', 2016, 3);

INSERT INTO Contracts (player_id, team_id, start_season, end_season, annual_salary, guaranteed, option_type) VALUES
(1, 1, 2023, 2025, 47600000, TRUE, 'Player'),
(2, 1, 2023, 2026, 40000000, TRUE, 'None'),
(3, 2, 2023, 2027, 32000000, TRUE, 'None'),
(4, 2, 2023, 2026, 28000000, TRUE, 'Player');

INSERT INTO Games (game_date, home_team_id, away_team_id, home_score, away_score) VALUES
('2025-01-10', 1, 2, 112, 108),
('2025-01-15', 2, 1, 115, 110);

INSERT INTO Player_Game_Stats VALUES
(1, 1, 36.5, 28, 8, 9, 1, 1, 4, 0.520, 0.610, 31.2),
(1, 2, 34.0, 22, 12, 3, 2, 2, 3, 0.500, 0.590, 24.8),
(1, 3, 37.2, 30, 7, 5, 1, 0, 2, 0.540, 0.620, 32.1),
(1, 4, 35.1, 24, 6, 4, 2, 1, 3, 0.510, 0.580, 27.5);

INSERT INTO Lineups (team_id, season) VALUES
(1, 2025),
(2, 2025);

INSERT INTO Lineup_Players VALUES
(1, 1), (1, 2),
(2, 3), (2, 4);

INSERT INTO Lineup_Stats VALUES
(1, 8.5, 118.2, 109.7, 215),
(2, 6.1, 115.4, 109.3, 198);

INSERT INTO Injuries (player_id, injury_type, start_date, end_date, games_missed) VALUES
(2, 'Ankle Sprain', '2024-12-01', '2024-12-15', 6),
(2, 'Foot Stress', '2023-11-10', '2023-11-25', 7);
