FROM python:3

WORKDIR /usr/app/src
EXPOSE 3000

COPY ./gavel/requirements.txt ./requirements.txt
RUN pip install -r requirements.txt


# ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
# RUN celery -A gavel:celery worker -E&

# CMD ["bash", "-c", "celery -A gavel:celery worker -Esleep 5 && python initialize.py && python runserver.py"]

# CMD [ "sleep", "infinity" ]

# CMD ["bash", "-c", "sleep 5 && python initialize.py && python runserver.py"]
