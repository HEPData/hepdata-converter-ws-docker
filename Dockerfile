FROM hepdata/hepdata-converter:0.1.35

COPY requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip
RUN pip install -I hepdata-converter-ws

CMD hepdata-converter-ws
