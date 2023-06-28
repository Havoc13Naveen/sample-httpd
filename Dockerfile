FROM httpd
RUN rm -f /usr/local/apache2/htdocs/*
COPY ./*.html /usr/local/apache2/htdocs/
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
