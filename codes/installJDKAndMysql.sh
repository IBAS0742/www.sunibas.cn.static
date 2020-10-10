tar -zvxf jdk-8u261-linux-x64.tar.gz
sudo mv jdk1.8.0_261/ /usr/local/jdk8
sudo vi /etc/profile

> export JAVA_HOME=/usr/local/jdk1.8
> export JRE_HOME=${JAVA_HOME}/jre
> export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
> export PATH=.:${JAVA_HOME}/bin:$PATH
source /etc/profile

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