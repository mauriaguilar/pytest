# docker pull python:3.9-alpine
# docker run -it python:3.9-alpine sh

ARG PYTHON_VERSION
FROM python:$PYTHON_VERSION

ARG PYTEST_VERSION
RUN pip install pytest==$PYTEST_VERSION
WORKDIR /root
CMD [ "pytest" ]

# docker build -t testing:latest .
# docker run -it testing:latest sh
