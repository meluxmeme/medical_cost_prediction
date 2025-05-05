FROM python:3.10
COPY ./app /app
WORKDIR /app
RUN  pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind