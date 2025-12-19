FROM python:3.10

WORKDIR /code

# 1. Install Django and Gunicorn
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# 2. Copy your code
COPY . .

# 3. Setting the Port for Hugging Face
ENV PORT=7860
EXPOSE 7860

# Replace the old CMD with this specific one
CMD ["gunicorn", "--bind", "0.0.0.0:7860", "django_qr.wsgi:application"]