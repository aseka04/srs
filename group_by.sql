SELECT User_ID, COUNT(*) AS Total_Repositories 
FROM Repositories 
GROUP BY User_ID 
HAVING COUNT(*) > 1;