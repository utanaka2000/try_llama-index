FROM python:3.11-buster


RUN curl -sL https://deb.nodesource.com/setup_18.x | bash
RUN apt-get update && \
    apt-get -y install locales wait-for-it nodejs && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

RUN pip install --upgrade pip setuptools

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN jupyter labextension update --all

COPY jupyter_lab_config.py /root/.jupyter/
COPY shortcuts.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/shortcuts-extension/

WORKDIR /jupyter
