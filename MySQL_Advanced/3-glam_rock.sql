-- Select bands that have "Glam rock" as their main style and calculate their lifespan
SELECT band_name, 
       CASE 
           WHEN split IS NULL THEN YEAR(CURDATE()) - formed -- Still active bands
           ELSE split - formed -- Bands that have split
       END AS lifespan
FROM metal_bands
WHERE style = 'Glam rock'
ORDER BY lifespan DESC;
