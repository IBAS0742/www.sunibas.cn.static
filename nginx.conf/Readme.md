这个目录是 nginx 配置的内容
存放路径在 /etc/nginx/conf.d/

public.conf 是开启了一个 ```内容分发网络``` 需要修改 ```nginx.conf```

```shell script
sudo vi /etc/nginx/nginx.conf

# 做以下修改
#user www-data;
user root;
```