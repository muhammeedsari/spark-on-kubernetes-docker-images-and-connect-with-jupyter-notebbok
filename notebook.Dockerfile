FROM appneuronco/spark-py:3.1.1-hadoop3.2-extended-deneme

USER root
#ARG spark_uid=185

#USER ${spark_uid}
#RUN apt-get update

#RUN apt-get update && apt-get -y update
#RUN pip3 install --upgrade pip

#WORKDIR /opt/spark

#RUN rm -rf pyspark

#RUN cd / && chmod 777 .

#USER root
#RUN export PATH=$PATH:~/.local/bin/
#RUN cd ~/.local/bin/ && chown -R ${spark_uid} *

#USER ${spark_uid}
#RUN chown -R ${spark_uid} /.[^.]*

#USER ${spark_uid}

RUN ln -sv /usr/bin/pip

RUN pip install --upgrade pip

RUN pip install  notebook \
    ipynb \
    ipython \
    pyspark==3.1.1

#ARG spark_uid=1000

#USER ${spark_uid}

#RUN pip3 install pyspark==3.1.1
RUN cd /root/ &&  mkdir .ivy2
RUN cd /root/.ivy2/ && mkdir jars


RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hado>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.7.4/aws-ja>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/2.7.0/hado>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hado>
RUN cd /root/.ivy2/jars && wget --quiet  "https://maven.forgerock.org/repo/repo/ai/catboost/catboost-spark_3.1_2>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/com/microsoft/azure/synapseml_2.12/0.9.>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/org/mongodb/spark/mongo-spark-connector>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hado>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/io/fabric8/kubernetes-model/4.4.2/kuber>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/io/fabric8/kubernetes-model-common/4.4.>
RUN cd /root/.ivy2/jars && wget --quiet  "https://repo1.maven.org/maven2/io/fabric8/kubernetes-client/4.4.2/kube>
#USER root

#ARG NB_USER="Appneuron"
#ARG NB_UID="1000"
#ARG NB_GROUP="analytics"
#ARG NB_GID="777"
#RUN groupadd -g $NB_GID $NB_GROUP \
#       && useradd -m -s /bin/bash -N -u $NB_UID -g $NB_GID $NB_USER \
#       && mkdir -p /home/$NB_USER/work \
#       && mkdir -p /home/$NB_USER/.jupyter \
#       && chown -R $NB_USER:$NB_GROUP /home/$NB_USER

#RUN mkdir /home/$NB_USER/work
# Configure Working Directory

#ENV SPARK_HOME /opt/spark

#USER $NB_USER

#WORKDIR /home/Appneuron/work
#ENV SPARK_CLASSPATH=':/opt/spark/jars/*'
#ENV PATH=$PATH:/opt/spark/bin:/opt/spark/sbin

#ENV PYSPARK_PYTHON=/usr/bin/python3

#ENV PYSPARK_DRIVER_PYTHON="jupyter"

#ENV PYSPARK_DRIVER_PYTHON_OPTS="notebook"

#ENV PYSPARK_PYTHON=python3

CMD jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser --allow-root --notebook-dir=/home/notebook/
#CMD jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser --notebook-dir=/home/notebook/
#USER ${spark_uid}
