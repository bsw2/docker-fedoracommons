FROM tomcat:7

RUN mkdir /usr/local/fedora
RUN sed -i '$s,$,\nfcrepo.home=/usr/local/fedora,' /usr/local/tomcat/conf/catalina.properties
RUN wget -q https://github.com/fcrepo4/fcrepo4/releases/download/fcrepo-4.1.1/fcrepo-webapp-4.1.1.war -O /usr/local/tomcat/webapps/fcrepo.war
