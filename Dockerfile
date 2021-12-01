# 导入基础镜像
FROM python:3.9

# 构建镜像时需要执行的命令
RUN git clone https://gitee.com/yy_cui/s2i-django-sample.git && \
    cd s2i-django-sample && \
    python -m venv .env && \
    .env/bin/pip install -i https://pypi.douban.com/simple -r requirements.txt

# 每次启动镜像时需要执行的命令
CMD s2i-django-sample/.env/bin/python /s2i-django-sample/manage.py runserver 0:8000

# 公开一个端口
EXPOSE 8000