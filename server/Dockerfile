FROM ubuntu


RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer


# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN apt-get update && apt-get install -y maven


RUN wget http://mirrors.sonic.net/apache/spark/spark-1.2.1/spark-1.2.1.tgz
RUN tar -xzvf spark-1.2.1.tgz
WORKDIR /data/spark-1.2.1
RUN mvn -DskipTests clean package

RUN apt-get update && apt-get install -y ipython ipython-notebook python-gdal python-numpy 

ADD startup.sh /data/startup.sh

# Define default command.
ENTRYPOINT /data/startup.sh

EXPOSE 8080 7077
