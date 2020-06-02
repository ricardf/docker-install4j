ARG IMAGE_BASE
ARG IMAGE_VERSION
ARG INSTALL4J_VERSION

FROM ${BASE_IMAGE}:${BASE_VERSION}
SHELL ["/bin/bash", "-c"]
ENV INSTALL4J_HOME="/opt/install4j8"
RUN \
    SPLITED_INSTALL4J_VERSION=(${INSTALL4J_VERSION//./ }) && \
    apt-get update && \
    apt-get install -y nano && \
    apt-get install -y wget && \
    apt-get install -y zip && \
    wget https://download-gcdn.ej-technologies.com/install4j/install4j_linux_${SPLITED_INSTALL4J_VERSION[0]}_${SPLITED_INSTALL4J_VERSION[1]}_${SPLITED_INSTALL4J_VERSION[2]}.deb && \
    dpkg -i install4j_linux_${SPLITED_INSTALL4J_VERSION[0]}_${SPLITED_INSTALL4J_VERSION[1]}_${SPLITED_INSTALL4J_VERSION[2]}.deb && \
    rm install4j_linux_${SPLITED_INSTALL4J_VERSION[0]}_${SPLITED_INSTALL4J_VERSION[1]}_${SPLITED_INSTALL4J_VERSION[2]}.deb