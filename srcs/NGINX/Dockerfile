FROM	debian:buster

RUN		apt-get update && \
		apt-get install -y nginx openssl

RUN		rm /etc/nginx/nginx.conf

COPY	nginx.conf /etc/nginx/

COPY	cert.pem /etc/nginx/
COPY	privkey.pem /etc/nginx/

EXPOSE	443

CMD		["nginx", "-g", "daemon off;"]
