FROM python:3.11-slim
WORKDIR /app
RUN pip install --no-cache-dir flask mysql-connector-python
COPY app.py .
CMD ["python", "app.py"]
