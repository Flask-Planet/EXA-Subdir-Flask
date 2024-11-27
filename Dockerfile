FROM python:3.12-alpine

# delete www-data group
RUN delgroup www-data
RUN addgroup -g 1000 www-data
RUN adduser -D -H -u 1000 -s /bin/bash www-data -G www-data


# install nginx
RUN apk add --update --no-cache nginx openrc

WORKDIR /server

COPY app ./app
COPY requirements.txt .
COPY pyqwe.toml .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["pyqwe", "run"]