## 介绍

本镜像用于执行基于golang开发的程序。通过supervisor管理进程。

## 使用docker-compose运行


- 参考[docker-compose.yml](https://github.com/sparkpos/golang-supervisor/blob/master/docker-compose.yml),使用如下的custom.conf修改为自己的配置进行执行。

- (supervisor语法参考](http://supervisord.org/configuration.html#program-x-section-settings)

## 自定义supervisor配置文件

应该通过docker volume方式挂在到如下路径：

```
/etc/supervisor.d/
```

### supervisor使用的custom.conf

```
[program:go-example]
command=/go-example.sh
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
startsecs=30
autorestart=true
startretries=200
```
