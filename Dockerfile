FROM continuumio/miniconda3

RUN conda create -n env python=3.7
RUN echo "source activate env" > ~/.bashrc

RUN mkdir -p /opt/
RUN cd /opt && git clone https://github.com/VirtualFlyBrain/VFB_neo4j.git 

ENV PYTHONPATH=/opt/VFB_neo4j/src

ENV PATH /opt/conda/envs/env/bin:$PATH

RUN conda install -n env --file /opt/VFB_neo4j/requirements.txt
