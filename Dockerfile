FROM hepdata/hepdata-converter:latest

RUN pip install hepdata-converter-ws

CMD hepdata-converter-ws
