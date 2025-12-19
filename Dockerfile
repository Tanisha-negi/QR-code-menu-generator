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

# 4. Find the project name and run it
# This command looks for the folder containing wsgi.py and starts it
CMD ["sh", "-c", "python manage.py migrate && gunicorn --bind 0.0.0.0:7860 $(ls -d */ | xargs -I {} sh -c 'if [ -f {}wsgi.py ]; then echo {}; fi' | head -n 1 | tr -d '/') .wsgi:application"]