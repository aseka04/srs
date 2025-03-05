
INSERT INTO Roles (Role_Name) VALUES ('User'), ('Admin');

INSERT INTO Users (Name, Email, Password_Hash, Role_ID) VALUES 
('Ulbolsyn', 'ulbolsyn@gmail.com', 'hash1', 1),
('Suneliya', 'sun@gmail.com', 'hash2', 1),
('Samat', 'samat@gmail.com', 'hash3', 2),
('Assiya', 'assi@gmail.com', 'hash4', 1),
('Abdulla', 'abdu@gmail.com', 'hash5', 2),
('Sultan', 'sultan@gmail.com', 'hash6', 1),
('Aisha', 'aisha@gmail.com', 'hash7', 2);

INSERT INTO Repositories (Name, User_ID, Visibility) VALUES 
('Project_A', 1, 'Public'),
('Project_B', 2, 'Private');

INSERT INTO Commits (Repo_ID, User_ID, Message) VALUES 
(1, 1, 'Initial commit'),
(2, 2, 'Bug fixes');

INSERT INTO Branches (Repo_ID, Name) VALUES 
(1, 'main'),
(2, 'develop');

INSERT INTO Access (User_ID, Repo_ID, Permission) VALUES 
(1, 1, 'Admin'),
(2, 2, 'Write');

INSERT INTO Issues (Repo_ID, User_ID, Title, Description, Status) VALUES 
(1, 1, 'Bug in login', 'User cannot log in', 'Open');

INSERT INTO Merge_Requests (Repo_ID, Source_Branch, Target_Branch, Status) VALUES 
(1, 'feature1', 'main', 'Open');

INSERT INTO Logs (User_ID, Repo_ID, Action) VALUES 
(1, 1, 'Pushed code');



