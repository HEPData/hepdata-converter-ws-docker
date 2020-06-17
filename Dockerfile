FROM hepdata/hepdata-converter:0.2.0

COPY requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip
RUN pip install --ignore-installed -r /tmp/requirements.txt && rm /tmp/requirements.txt

CMD hepdata-converter-ws
