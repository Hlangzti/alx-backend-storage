-- SQL script that ranks country origins of bands, ordered
-- by the number of (non-unique) fans
ALTER TABLE `metal_bands`
ADD INDEX (`origin`);

SELECT `origin`, SUM(`fans`) AS `nb_fans` 
FROM `metal_bands` 
GROUP BY `origin` 
ORDER BY SUM(`fans`) DESC;