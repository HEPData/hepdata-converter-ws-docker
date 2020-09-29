FROM hepdata/hepdata-converter:0.2.0

RUN pip3 install --upgrade pip
RUN pip3 install -I hepdata-converter-ws==0.2.0

CMD hepdata-converter-ws
