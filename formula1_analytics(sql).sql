# drivers
SELECT driverId, COUNT(*)
FROM drivers
GROUP BY driverId
HAVING COUNT(*) > 1; #check for duplicate values

ALTER TABLE drivers
ADD PRIMARY KEY (driverId); #create primary key

SHOW CREATE TABLE drivers; #show the primary key
DESCRIBE TABLE drivers;

#circuits
SELECT circuitId, COUNT(*)
FROM circuits
GROUP BY circuitId
HAVING COUNT(*) > 1;

ALTER TABLE circuits
ADD PRIMARY KEY (circuitId);

SHOW CREATE TABLE circuits;
DESCRIBE TABLE circuits;

# constructors
SELECT constructorId, COUNT(*)
FROM constructors
GROUP BY constructorId
HAVING COUNT(*) > 1;

ALTER TABLE constructors
ADD PRIMARY KEY (constructorId);

SHOW CREATE TABLE constructors;
DESCRIBE TABLE constructors;

# constructor_results
SELECT constructorResultsId, COUNT(*)
FROM constructor_results
GROUP BY constructorResultsId
HAVING COUNT(*) > 1;

ALTER TABLE constructor_results
ADD PRIMARY KEY (constructorResultsId);

SHOW CREATE TABLE constructor_results;
DESCRIBE TABLE constructor_results;

# consrtuctor_standings
SELECT constructorStandingsId, COUNT(*)
FROM constructor_standings
GROUP BY constructorStandingsId
HAVING COUNT(*) > 1;

ALTER TABLE constructor_standings
ADD PRIMARY KEY (constructorStandingsId);

SHOW CREATE TABLE constructor_standings;
DESCRIBE TABLE constructor_standings;

#  races
SELECT raceId, COUNT(*)
FROM races
GROUP BY raceId
HAVING COUNT(*) > 1;

ALTER TABLE races
ADD PRIMARY KEY (raceId);

ShOW CREATE TABLE races;
DESCRIBE races;

#  results
SELECT resultId, COUNT(*)
FROM results
GROUP BY resultId
HAVING COUNT(*) > 1;

ALTER TABLE results
ADD PRIMARY KEY (resultId);

DESCRIBE results;

# qualifying
SELECT qualifyId, COUNT(*)
FROM qualifying
GROUP BY qualifyId
HAVING COUNT(*) > 1;

ALTER TABLE qualifying
ADD PRIMARY KEY (qualifyId);

DESCRIBE qualifying;

# seasons
SELECT year, COUNT(*)
FROM seasons
GROUP BY year
HAVING COUNT(*) > 1;

ALTER TABLE seasons
ADD PRIMARY KEY (year);

DESCRIBE seasons;

#status
SELECT statusId, COUNT(*)
FROM status
GROUP BY statusId
HAVING COUNT(*) > 1;

ALTER TABLE status
ADD PRIMARY KEY (statusId);

DESCRIBE status;

# sprint_results
SELECT resultId, COUNT(*)
FROM sprint_results
GROUP BY resultId
HAVING COUNT(*) > 1;

ALTER TABLE sprint_results
ADD PRIMARY KEY (resultId);

DESCRIBE sprint_results;

# lap_times
SELECT raceId, driverId, lap, COUNT(*)
FROM lap_times
GROUP BY raceId, driverId, lap
HAVING COUNT(*) > 1;

ALTER TABLE lap_times
ADD PRIMARY KEY (raceId, driverId, lap);

DESCRIBE lap_times;

# pit_stops
SELECT raceId, driverId, stop, COUNT(*)
FROM pit_stops
GROUP BY raceId, driverId, stop
HAVING COUNT(*) > 1;

ALTER TABLE pit_stops
ADD PRIMARY KEY (raceId, driverId, stop);

DESCRIBE pit_stops;


