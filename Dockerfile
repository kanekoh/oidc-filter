FROM adal4j-sample/sample:latest


RUN /opt/rh/rh-maven35/root/usr/bin/mvn package && \
    mkdir -p WEB-INF/lib && \
    wget https://repo1.maven.org/maven2/com/microsoft/azure/adal4j/1.6.4/adal4j-1.6.4.jar && \
    mv adal4j*.jar WEB-INF/lib/ && \
    mv target/oidc-filter.jar && \
    jar -uvf /opt/webserver/webapps/adal4jsample.war WEB-INF/

