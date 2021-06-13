FROM cnfldemos/cp-server-connect-datagen:0.4.0-6.1.0

RUN confluent-hub install microsoftcorporation/kafka-connect-cosmos:1.0.9-beta --no-prompt

USER root

RUN yum install sudo -y && usermod -aG wheel appuser
RUN echo 'appuser ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER appuser

COPY library-scripts/connect-cosmosdb-cert.sh /tmp/connect-cosmosdb-cert.sh