CREATE TABLE Teams (
    team_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT NOT NULL,
    conference TEXT,
    division TEXT
);

CREATE TABLE Players (
    player_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    dob DATE,
    height_in INT,
    weight_lb INT,
    position TEXT,
    draft_year INT,
    draft_pick INT
);

CREATE TABLE Contracts (
    contract_id SERIAL PRIMARY KEY,
    player_id INT REFERENCES Players(player_id),
    team_id INT REFERENCES Teams(team_id),
    start_season INT,
    end_season INT,
    annual_salary NUMERIC(10,2),
    guaranteed BOOLEAN,
    option_type TEXT
);

CREATE TABLE Games (
    game_id SERIAL PRIMARY KEY,
    game_date DATE,
    home_team_id INT REFERENCES Teams(team_id),
    away_team_id INT REFERENCES Teams(team_id),
    home_score INT,
    away_score INT
);

CREATE TABLE Player_Game_Stats (
    game_id INT REFERENCES Games(game_id),
    player_id INT REFERENCES Players(player_id),
    minutes NUMERIC(4,1),
    points INT,
    rebounds INT,
    assists INT,
    steals INT,
    blocks INT,
    turnovers INT,
    fg_pct NUMERIC(4,3),
    ts_pct NUMERIC(4,3),
    usage_rate NUMERIC(4,1),
    PRIMARY KEY (game_id, player_id)
);

CREATE TABLE Lineups (
    lineup_id SERIAL PRIMARY KEY,
    team_id INT REFERENCES Teams(team_id),
    season INT
);

CREATE TABLE Lineup_Players (
    lineup_id INT REFERENCES Lineups(lineup_id),
    player_id INT REFERENCES Players(player_id),
    PRIMARY KEY (lineup_id, player_id)
);

CREATE TABLE Lineup_Stats (
    lineup_id INT REFERENCES Lineups(lineup_id),
    net_rating NUMERIC(5,2),
    offensive_rating NUMERIC(5,2),
    defensive_rating NUMERIC(5,2),
    minutes_played INT
);

CREATE TABLE Injuries (
    injury_id SERIAL PRIMARY KEY,
    player_id INT REFERENCES Players(player_id),
    injury_type TEXT,
    start_date DATE,
    end_date DATE,
    games_missed INT
);
