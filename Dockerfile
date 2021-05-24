FROM python

RUN apt update
RUN python3 -m pip install django mysqlclient

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install django-environ django-summernote payjp

WORKDIR /app

# ADD ./source/app /app

# CMD python3 manage.py runserver 0.0.0.0:$PORT
