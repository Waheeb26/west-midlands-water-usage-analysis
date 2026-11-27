USE west_midland_water;
 -- 1. View all imported data 
SELECT *FROM west_midland_water;
 -- 2. Compare average water usage and leakage : West Midlands vs England
 SELECT 
	Region,
    round(avg('litres per person daily'), 1) As avg_lires_per_day,
    round(avg('leakage percent'), 1) As avg_leakage_pct
    FROM west_midland_water
    GROUP BY Region;
    -- 3. Rank West Midlands water usage from highest to lowest year
    SELECT Year, 'litres per person daily', 'leakage percent'
    FROM west_midland_water WHERE Region LIKE '%Midland%'
    ORDER BY 'litres per person daily' DESC;
    