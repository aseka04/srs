SELECT * FROM Issues 
WHERE Status = 'Open' AND Repo_ID 
IN (SELECT Repo_ID FROM Repositories WHERE Visibility = 'Public');