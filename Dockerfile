FROM mysql

WORKDIR App



RUN  apt-get update
RUN  apt-get install -y python3-pip

RUN  apt-get install -y vim
RUN  apt-get install -y curl
RUN  apt-get install -y git
RUN  apt-get install -y npm
RUN  pip3 install flask waitress flask-cors mysql-connector-python
RUN  curl -sL https://deb.nodesource.com/setup_9.x | bash -

RUN  npm install --global http-server

RUN  git clone https://github.com/sschavan/Angular_With_Flask.git

CMD chmod -R 777 Angular_With_Flask
CMD http-server
