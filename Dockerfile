# 升级到 Python 3.12.x 提高 20% 以上性能
FROM python:3.12-slim-bullseye

RUN pip install --upgrade pip

# 设定时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install --no-cache-dir jupyterlab scikit-learn scipy pandas aktools akshare --upgrade

CMD ["jupyter-lab", "--allow-root", "--no-browser", "--ip=0.0.0.0"]
