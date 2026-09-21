FROM python:3.14-slim

# Thư mục làm việc
WORKDIR /app

# Cài Poetry bằng pip
RUN python -m pip install --no-cache-dir poetry

COPY main.py .

CMD ["python", "main.py"]
