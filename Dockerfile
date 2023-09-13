FROM python:3

RUN pip install django==4.2.5

COPY . .

EXPOSE 8000

RUN python manage.py makemigrations

RUN python manage.py migrate

ENTRYPOINT ["python","manage.py","runserver"]

CMD ["0.0.0.0:8000"]
