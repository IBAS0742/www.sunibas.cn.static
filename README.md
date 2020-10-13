# www.sunibas.cn.static

主站的静态文件，当前文件的位置在 ```/home/ubuntu/www.sunibas.cn.static```

1. pages 站内页面（可能内容超多，所以不要同步到git）

- 这些页面的压缩包放在 zips 内

2. images 站内使用的图片

3. codes 一些定时执行的代码

4. jsons 一些静态资源，是 codes 生成的，所以不需要同步到 git

5. cdn 是 cdn 加速

## 服务器配置相关

git clone https://github.com/IBAS0742/www.sunibas.cn.static.git

- 主机密码是 ```名字001```

- 数据库配置为 MySQL，密码是 ```中英(极简)123```

- 端口配置如下

| 端口 | 用途 |
| -------- | -------- |
| 3306   | MySQL   |
| 22   | ftp   |
| 443   | https   |
| 80   | http   |
| 7000   | 内网穿透(服务器端口)   |
| 7001   | 内网穿透（服务链接端口）  |

frp 参考文档 

[配置多级域名](https://www.centos.bz/2018/06/nginx-%E5%92%8C-frp%E5%85%B1%E7%94%A880%E7%AB%AF%E5%8F%A3/)

[配置nginx](https://xuexb.github.io/learn-nginx/example/domain.html#%E5%AD%90%E5%9F%9F%E5%90%8D%E8%BD%AC%E5%8F%91%E5%88%B0%E5%AD%90%E7%9B%AE%E5%BD%95)

nginx 启动和关闭

```shell script
service nginx start/stop
```

git 重置

```shell script
git reset --hard acb28f2114413378d48ae3b257dca62a1cd29d0f【想要恢复到的版本commit id】 
git push origin HEAD --force
```