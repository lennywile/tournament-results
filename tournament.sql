-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

--Let's make sure nothing exists
--Drop Matches table first as it depends on Players table
DROP VIEW IF EXISTS Status;
DROP TABLE IF EXISTS Matches CASCADE;
DROP TABLE IF EXISTS Players CASCADE;


-- Create the Players table

CREATE TABLE Players(
	id SERIAL primary key, 
	name varchar(255)
);

-- Create the matches table

CREATE TABLE Matches(
	id SERIAL primary key,
	win int references Players(id),
	loss int references Players(id)
);

-- Create a Status View to get wins and total matches by player
	
CREATE VIEW Status AS
	SELECT p.id, p.name,
	COUNT(m.win) as wins,
	COUNT(m2.win + m2.loss) as games
	FROM Players p 
	left join matches m on p.id = m.win
	left join matches m2 on p.id = m2.win or p.id = m2.loss 
	GROUP BY p.id
	ORDER BY wins DESC;




