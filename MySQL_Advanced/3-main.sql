-- Execute the query and limit the result to the top bands
SELECT band_name, 
       CASE 
           WHEN split IS NULL THEN YEAR(CURDATE()) - formed
           ELSE split - formed
       END AS lifespan
FROM metal_bands
WHERE style = 'Glam rock'
ORDER BY lifespan DESC
LIMIT 10;
