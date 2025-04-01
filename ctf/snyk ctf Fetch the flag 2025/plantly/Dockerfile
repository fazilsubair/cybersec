FROM python:3.11-slim

WORKDIR /src

ENV PYTHONPATH=/src

COPY src/ /src/
COPY flag.txt /src/flag.txt

RUN pip install --no-cache-dir -r /src/requirements.txt

RUN python /src/seed.py

EXPOSE 8080

CMD ["python", "/src/run.py"]
