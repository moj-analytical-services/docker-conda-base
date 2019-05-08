FROM continuumio/miniconda3

SHELL ["/bin/bash", "-c"]

COPY environment.yaml environment.yaml

RUN conda env update --file environment.yaml -n base

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt
