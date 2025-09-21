FROM python:3.11-slim   # It's better to specify a Python version

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]   # <-- comma is required between "python" and "app.py"
