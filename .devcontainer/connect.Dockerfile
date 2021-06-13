FROM cnfldemos/cp-server-connect-datagen:0.4.0-6.1.0

RUN confluent-hub install microsoftcorporation/kafka-connect-cosmos:1.0.9-beta --no-prompt
