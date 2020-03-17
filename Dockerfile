FROM hepdata/hepdata-converter:0.1.35

RUN pip install --upgrade pip
RUN pip install -I hepdata-converter-ws==0.1.7

CMD hepdata-converter-ws
