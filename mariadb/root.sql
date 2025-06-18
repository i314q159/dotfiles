-- 更改root密码
ALTER USER 'root'@'localhost' IDENTIFIED BY 'i314q159';

-- 查看数据库用户
SELECT User, Host FROM mysql.user;
