FROM python:3.7
WORKDIR /app
RUN pip install Flask==2.1.1
ENV TZ=Europe/Istanbul
COPY . /app
EXPOSE 81
CMD [ "python3", "app.py" ]
