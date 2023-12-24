#!/bin/sh
#!/bin/bash

# 打印启动日志
echo "Container is starting..."

# 启动 php-fpm
/usr/sbin/php-fpm8.1 &

# 启动 nginx
nginx -g 'daemon off;' 

# 启动supervisor,也是前台模式 
supervisord -c /etc/supervisor/supervisord.conf 

# 每秒打印一个点,表示容器正在运行
while true
do
    echo -n "."
    sleep 1
done

