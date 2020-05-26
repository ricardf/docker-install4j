FROM adoptopenjdk/openjdk11:debian-slim
ARG INSTALL4J_VERSION=8.0.6
RUN \
    SPLITED_INSTALL4J_VERSION=(${INSTALL4J_VERSION//./ }) \
    apt-get update && \
    apt-get install -y nano && \
    apt-get install -y zip && \
    wget https://download-gcdn.ej-technologies.com/install4j/install4j_linux_${SPLITED_INSTALL4J_VERSION[0]}_${SPLITED_INSTALL4J_VERSION[1]}_${SPLITED_INSTALL4J_VERSION[2]}.deb && \
    dpkg -i install4j_linux_${SPLITED_INSTALL4J_VERSION[0]}_${SPLITED_INSTALL4J_VERSION[1]}_${SPLITED_INSTALL4J_VERSION[2]}.deb && \
    rm install4j_linux_${SPLITED_INSTALL4J_VERSION[0]}_${SPLITED_INSTALL4J_VERSION[1]}_${SPLITED_INSTALL4J_VERSION[2]}.deb