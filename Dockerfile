FROM docker-registry.default.svc:5000/adal4j-sample/sample:latest

RUN mkdir -p WEB-INF/lib

COPY target/oidc-filter.jar target/dependency/*.jar WEB-INF/lib/

RUN  jar -uvf /opt/webserver/webapps/adal4jsample.war WEB-INF/