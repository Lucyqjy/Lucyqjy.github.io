# 使用官方Ubuntu镜像作为基础镜像
FROM ubuntu:22.04

# 更新软件包列表
RUN apt-get update 

# 安装 nginx
RUN apt-get install -y nginx

# 将博客文件复制到容器中
COPY . /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 启动nginx
CMD ["nginx", "-g", "daemon off;"]
