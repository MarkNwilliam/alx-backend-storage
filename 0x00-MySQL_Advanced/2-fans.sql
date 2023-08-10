-- Task 2: Best band ever!
-- Rank the country origins of bands, ordered by the number of (non-unique) fans
-- Import the table dump metal_bands.sql.zip first
-- Column names must be: origin and nb_fans
-- The script can be executed on any database

SELECT origin, SUM(nb_fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
