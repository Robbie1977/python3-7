FROM continuumio/miniconda3

RUN conda create -n env python=3.7
RUN echo "source activate env" > ~/.bashrc

ENV PYTHONPATH=/opt/VFB_neo4j/src

ENV PATH /opt/conda/envs/env/bin:$PATH

RUN mkdir -p /opt/
RUN cd /opt && git clone https://github.com/VirtualFlyBrain/VFB_neo4j.git 

RUN conda install -y -n env --file /opt/VFB_neo4j/requirements.txt

