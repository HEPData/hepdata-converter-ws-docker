FROM hepdata/hepdata-converter:latest

RUN pip install --upgrade pip
RUN pip install hepdata-converter-ws

CMD hepdata-converter-ws
