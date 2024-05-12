FROM python:3.8-slim

WORKDIR /app

RUN pip install virtualenv

RUN virtualenv env --python=python3.8

RUN /bin/bash -c "source env/bin/activate"

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 7755

CMD ["bash", "run.sh"]
