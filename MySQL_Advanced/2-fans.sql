-- Select and sum up the number of fans per country, ordering the results by the total number of fans in descending order
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
