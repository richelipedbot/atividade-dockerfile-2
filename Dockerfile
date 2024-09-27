FROM mysql:5.7 AS mysql

ENV MYSQL_ROOT_PASSWORD=teste
ENV MYSQL_DATABASE=teste
ENV MYSQL_USER=teste
ENV MYSQL_PASSWORD=teste

VOLUME /var/lib/mysql

EXPOSE 3306

FROM phpmyadmin:apache

RUN ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

ENV PMA_HOST=mysql-container
ENV PMA_PORT=3306
ENV PMA_ARBITRARY=1

COPY --from=mysql /var/lib/mysql /var/lib/mysql

EXPOSE 80


