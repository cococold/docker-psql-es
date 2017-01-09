FROM postgres:9.5.5
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt-get update \
	&& apt-get install -y python-dev postgresql-common postgresql-server-dev-all python-pip git

# install pgxn
RUN pip install pgxnclient -i https://pypi.mirrors.ustc.edu.cn/simple

# install multicorn
RUN pgxn install multicorn
RUN apt-get update && apt-get install -y postgresql-9.5-python-multicorn

# install pg-es-fdw
RUN git config --global http.sslVerify false
RUN git clone https://github.com/runforever/pg-es-fdw /tmp/pg-es-fdw && cd /tmp/pg-es-fdw && python setup.py install
