-- 创建用户i314q159，并限制其只能从本地登录，并设置密码为 'i314q159'
CREATE USER 'i314q159'@'localhost' IDENTIFIED BY 'i314q159';

-- 如果数据库i314q159不存在，则创建该数据库
CREATE DATABASE IF NOT EXISTS i314q159;

-- 授予用户i314q159对数据库i314q159中所有表的所有权限
GRANT ALL PRIVILEGES ON i314q159.* TO 'i314q159'@'localhost';
