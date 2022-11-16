USE master
CREATE DATABASE hgame;
GO

USE hgame;
GO

CREATE TABLE gameType(
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
gametype NVARCHAR(127));
GO

CREATE TABLE gameLanguage(
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
gameLanguage NVARCHAR(20));
GO

CREATE TABLE gamedata(
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
game_name NVARCHAR(255) NOT NULL DEFAULT '¦WºÙ¥¼©w',
company NVARCHAR(127),
game_language INT,
game_type INT,
progress FLOAT,
h_rate INT,
FOREIGN KEY (game_language) REFERENCES gameLanguage(id),
FOREIGN KEY (game_type) REFERENCES gameType(id));
GO

CREATE TABLE tags(
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
tags NVARCHAR(127));
GO

CREATE TABLE game_to_tags(
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
game_id INT,
tag_id INT,
FOREIGN KEY (game_id) REFERENCES gamedata(id),
FOREIGN KEY (tag_id) REFERENCES tags(id));
GO

