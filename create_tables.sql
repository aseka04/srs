CREATE TABLE Roles (
    Role_ID SERIAL PRIMARY KEY,
    Role_Name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Users (
    User_ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Password_Hash VARCHAR(255) NOT NULL,
    Role_ID INT NOT NULL,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)
);

CREATE TABLE Repositories (
    Repo_ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    User_ID INT NOT NULL,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Visibility VARCHAR(50) CHECK (Visibility IN ('Public', 'Private')),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Commits (
    Commit_ID SERIAL PRIMARY KEY,
    Repo_ID INT NOT NULL,
    User_ID INT NOT NULL,
    Message TEXT NOT NULL,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Repo_ID) REFERENCES Repositories(Repo_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Branches (
    Branch_ID SERIAL PRIMARY KEY,
    Repo_ID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Repo_ID) REFERENCES Repositories(Repo_ID)
);

CREATE TABLE Access (
    Access_ID SERIAL PRIMARY KEY,
    User_ID INT NOT NULL,
    Repo_ID INT NOT NULL,
    Permission VARCHAR(50) CHECK (Permission IN ('Read', 'Write', 'Admin')),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Repo_ID) REFERENCES Repositories(Repo_ID)
);

CREATE TABLE Issues (
    Issue_ID SERIAL PRIMARY KEY,
    Repo_ID INT NOT NULL,
    User_ID INT NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Description TEXT,
    Status VARCHAR(50) CHECK (Status IN ('Open', 'Closed', 'In Progress')),
    FOREIGN KEY (Repo_ID) REFERENCES Repositories(Repo_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Merge_Requests (
    MR_ID SERIAL PRIMARY KEY,
    Repo_ID INT NOT NULL,
    Source_Branch VARCHAR(255) NOT NULL,
    Target_Branch VARCHAR(255) NOT NULL,
    Status VARCHAR(50) CHECK (Status IN ('Open', 'Merged', 'Closed')),
    FOREIGN KEY (Repo_ID) REFERENCES Repositories(Repo_ID)
);

CREATE TABLE Logs (
    Log_ID SERIAL PRIMARY KEY,
    User_ID INT NOT NULL,
    Repo_ID INT NOT NULL,
    Action TEXT NOT NULL,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Repo_ID) REFERENCES Repositories(Repo_ID)
);