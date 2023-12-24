# Dockerfiles

这个仓库包含了一些常用开发环境用到的Dockerfile和相关配置文件。

## PHP8_Yaf

这是一个基于Ubuntu 20.04的Dockerfile的简要说明:

### 主要功能

基于Ubuntu 20.04构建一个PHP+Nginx开发环境的docker镜像,包括必需的系统组件,PHP扩展,Nginx配置,以及zsh相关配置等。

### 具体步骤

1. 从Ubuntu 20.04基础镜像开始构建
2. 设置为非交互式安装以避免提示
3. 替换apt源为阿里云 mirrors
4. 安装基础系统工具和依赖软件,如zip、curl、wget、git等
5. 安装一些常用Linux系统工具,如vim、wget、git、telnet等
6. 安装PHP 8.1和必需的扩展,如mbstring、xml、mysql等
7. 安装Yaf扩展
8. 安装php-fpm
9. 安装Composer
10. 将默认登录shell设置为zsh
11. 安装nginx并删除默认站点配置
12. 拷贝nginx站点配置文件
13. 安装zsh相关插件如autosuggestions和syntax-highlighting
14. 设置工作目录和时区
15. 拷贝示例start脚本和index文件
16. 暴露端口并在容器启动时运行start脚本
17. 提供php-fpm运行所需权限

