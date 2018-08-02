# 介绍
本镜像用于执行基于golang开发的程序。通过supervisor管理进程。

# 自定义supervisor配置文件
应该通过docker volume方式挂在到如下路径：
```
/etc/supervisor.d/
```
