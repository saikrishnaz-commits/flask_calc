FROM python:3.11-slim   # It's better to specify a Python version

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Start the app
CMD ["python", "app.py"]   # <-- comma is required between "python" and "app.py"
