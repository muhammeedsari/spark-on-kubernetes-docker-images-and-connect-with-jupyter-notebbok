FROM appneuronco/spark-py:3.1.1-hadoop3.2

USER root

ARG spark_uid=1000

#USER ${spark_uid}

#WORKDIR /app

#RUN  rm -rf /opt/spark/bin/pyspark2.cmd /opt/spark/bin/pyspark /opt/spark/bin/pyspark.cmd

RUN apt-get update

#USER ${spark_uid}

RUN ln -sv /usr/bin/pip3

RUN pip3 install --upgrade pip

COPY requirements.txt /opt/spark/python

RUN cd /opt/spark/python && pip3 install -r requirements.txt

#USER root

RUN apt-get install -y wget

RUN rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/*

#USER ${spark_uid}

RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.8>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoo>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.7.4/aws-jav>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/2.7.0/hadoo>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.8>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoo>
RUN cd /opt/spark/jars && wget --quiet  "https://maven.forgerock.org/repo/repo/ai/catboost/catboost-spark_3.1_2.>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/com/microsoft/azure/synapseml_2.12/0.9.5>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/org/mongodb/spark/mongo-spark-connector_>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.3>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoo>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/io/fabric8/kubernetes-model/4.4.2/kubern>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/io/fabric8/kubernetes-model-common/4.4.2>
RUN cd /opt/spark/jars && wget --quiet  "https://repo1.maven.org/maven2/io/fabric8/kubernetes-client/4.4.2/kuber>

#ENV SPARK_VERSION=3.1.1

#ENV HADOOP_VERSION=3.2.0

USER ${spark_uid}

#ENV SPARK_HOME /opt/spark

USER ${spark_uid}

#ENV PATH /opt/spark/bin

#ENTRYPOINT [ "/opt/entrypoint.sh" ]