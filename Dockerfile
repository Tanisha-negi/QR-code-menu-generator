FROM python:3.10

WORKDIR /code

# 1. Install dependencies globally
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# 2. Copy the rest of the code
COPY . .

# 3. Set environment variables
ENV FLASK_APP=app.py
ENV PYTHONUNBUFFERED=1

# 4. Run directly using the python module syntax on the required HF port
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=7860"]