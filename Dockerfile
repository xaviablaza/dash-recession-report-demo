FROM python:2.7-stretch
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD [ "gunicorn", "report_nyt_255:server", "--bind", "0.0.0.0" ]
