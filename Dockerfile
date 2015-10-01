FROM hepdata/hepdata-converter

COPY requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt && rm /tmp/requirements.txt

CMD hepdata-converter-ws
