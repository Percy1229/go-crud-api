DROP DATABASE IF EXISTS `user_db`;

CREATE DATABASE user_db;

use user_db;
-- usersテーブルを作成。名前とパスワード
CREATE TABLE users (
    id INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
);
-- usersテーブルに２つレコードを追加
INSERT INTO users (name) VALUES ("gophar");
INSERT INTO users (name) VALUES ("octcat");