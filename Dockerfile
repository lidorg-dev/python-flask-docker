FROM python:3.12.0a1-alpine
LABEL maintainer="lorenz.vanthillo@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["src/app.py"]
