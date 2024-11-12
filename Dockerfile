FROM python:latest

WORKDIR /python-docker

COPY ./sample_app/requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt  --index-url https://_json_key_base64:KEY@us-python.pkg.dev/cloud-aoss/cloud-aoss-python/simple  -v --no-deps
RUN pip3 install --require-hashes -r requirements.txt -v --no-deps

COPY ./sample_app .

CMD [ "python3", "main.py"]
EXPOSE 8080
