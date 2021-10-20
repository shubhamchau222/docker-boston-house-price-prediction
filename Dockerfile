FROM ubuntu:18.04
ENV PATH = '/root/Miniconda3/bin:${PATH}'
ARG PATH = '/root/Miniconda3/bin:${PATH}'

RUN apt update \
    && apt install -y htop python3-dev 

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh \
    && mkdir root/.conda \
    && sh Miniconda3-py37_4.10.3-Linux-x86_64.sh -b \
    && rm -f Miniconda3-py37_4.10.3-Linux-x86_64.sh

RUN conda create -y -n boston_house python=3.7 
    
COPY . src/

RUN /bin/bash -c "cd src \
            && source activate boston_house \
            && pip install -r requirements.txt"

CMD ['python' 'app.py']




