# docker pull python:3.9-alpine
# docker run -it python:3.9-alpine sh

FROM python:3.9-alpine

RUN pip install pytest==7.2.1

WORKDIR /root
ADD *.py .
CMD ["pytest"]
# docker build -t testing:v1 .
# docker run -it testing:v1 sh
