FROM nginx
COPY . /var/www/peaksmp.org/
COPY styles /var/www/peaksmp.org/styles
COPY static /var/www/peaksmp.org/static
