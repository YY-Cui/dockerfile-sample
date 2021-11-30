# d导入基础镜像
FROM python:3.9

# 复制代码文件
COPY flask-sample /flask-sample

# 切换工作目录
WORKDIR /flask-sample

# 设置环境变量
ENV FLASK_APP=flask-app.py

# 构建镜像时需要执行的命令
RUN pip install -i https://pypi.douban.com/simple -r requirements.txt

# 每次启动镜像时需要执行的命令
CMD flask run --host=0.0.0

# 公开一个端口
EXPOSE 5000