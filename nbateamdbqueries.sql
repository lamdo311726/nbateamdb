-- Select Top Lineups by Net Rating with at least 150 Minutes Played
SELECT l.lineup_id, t.name, ls.net_rating, ls.minutes_played
FROM Lineups l
JOIN Teams t ON l.team_id = t.team_id
JOIN Lineup_Stats ls ON l.lineup_id = ls.lineup_id
WHERE ls.minutes_played >= 150
ORDER BY ls.net_rating DESC;

-- Select High Usage, Low Efficiency Players
SELECT p.first_name, p.last_name,
       AVG(pgs.usage_rate) AS usage,
       AVG(pgs.ts_pct) AS ts
FROM Player_Game_Stats pgs
JOIN Players p ON pgs.player_id = p.player_id
GROUP BY p.player_id
HAVING AVG(pgs.usage_rate) > 25
   AND AVG(pgs.ts_pct) < 0.60;

-- Select Every Team's Payroll
SELECT t.name, SUM(c.annual_salary) AS payroll
FROM Contracts c
JOIN Teams t ON c.team_id = t.team_id
GROUP BY t.name;

-- Select Frequently Injured Players
SELECT p.first_name, p.last_name, COUNT(*) AS injury_count
FROM Injuries i
JOIN Players p ON i.player_id = p.player_id
GROUP BY p.player_id
HAVING COUNT(*) >= 2;
