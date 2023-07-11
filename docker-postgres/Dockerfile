FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# RUN python manage.py migrate
# RUN python manage.py makemigrations
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
