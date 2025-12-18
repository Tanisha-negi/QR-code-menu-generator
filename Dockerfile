FROM python:3.10-slim

# 1. Create a user to avoid permission issues
RUN useradd -m -u 1000 user
USER user
ENV PATH="/home/user/.local/bin:$PATH"

WORKDIR /app

# 2. Install dependencies as the 'user'
COPY --chown=user requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

# 3. Copy the rest of your code
COPY --chown=user . .

# 4. Use the full path to python3 to run flask
ENV FLASK_APP=app.py
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=7860"]