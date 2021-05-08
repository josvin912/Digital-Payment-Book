FROM python:3.6.5-alpine
COPY . /app
WORKDIR /app
RUN apt-get install python-dev default-libmysqlclient-dev
RUN apt-get install python3-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["josvin_app.py"]
