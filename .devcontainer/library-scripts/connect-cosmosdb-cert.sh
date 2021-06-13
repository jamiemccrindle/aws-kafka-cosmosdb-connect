openssl s_client -connect cosmosdb:8081 </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > /tmp/cosmosdb.crt
$JAVA_HOME/bin/keytool -cacerts -delete -alias cosmos_emulator -storepass changeit || echo 'delete not required'
$JAVA_HOME/bin/keytool -cacerts -importcert -alias cosmos_emulator -storepass changeit -no-prompt -file /tmp/cosmosdb.crt
