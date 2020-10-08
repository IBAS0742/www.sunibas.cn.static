sudo apt install default-jre

sudo apt-get install mysql-server

# 注释 bind-address:127.0.0.1
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf

# 启动 mysql
sudo /etc/init.d/mysql start

# 密码直接回车进入 MySQL
sudo mysql -u root -p
> GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '你的密码' WITH GRANT OPTION;
> FLUSH PRIVILEGES;
> quit;

# 重启数据库
sudo systemctl restart mysql