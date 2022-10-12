# FROM python:3
FROM python:3.9
WORKDIR /code/app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ARG PORT=80
ENV PORT=${PORT}
CMD tail -f /dev/null
# CMD gradio app.py
# CMD python app.py

