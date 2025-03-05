SELECT COUNT(*) AS Total_Users, AVG(Role_ID) AS AvgRole FROM Users;

SELECT SUM(Total_Repositories) FROM (SELECT COUNT(*) AS Total_Repositories 
FROM Repositories GROUP BY User_ID) AS RepoCount;