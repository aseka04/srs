SELECT Users.Name, Repositories.Name AS RepoName, Commits.Message 
FROM Users 
JOIN Repositories ON Users.User_ID = Repositories.User_ID
JOIN Commits ON Repositories.Repo_ID = Commits.Repo_ID;