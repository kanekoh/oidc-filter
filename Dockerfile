FROM docker-registry.default.svc:5000/adal4j-sample/sample:latest

RUN mkdir -p WEB-INF/lib && \
    curl https://repo1.maven.org/maven2/com/microsoft/azure/adal4j/1.6.4/adal4j-1.6.4.jar -o adal4j-1.6.4.jar && \
    mv adal4j*.jar WEB-INF/lib/

COPY target/oidc-filter.jar WEB-INF/lib/

RUN  jar -uvf /opt/webserver/webapps/adal4jsample.war WEB-INF/