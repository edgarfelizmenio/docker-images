ARG BASE_CONTAINER=continuumio/miniconda3
FROM $BASE_CONTAINER

LABEL maintainer="Edgar Felizmenio <edgarfelizmenio@gmail.com>"

USER root

WORKDIR /workdir

# install Jupyterlab
RUN conda install -c conda-forge jupyterlab
RUN conda install -c conda-forge nb_conda_kernels

# install Pytorch
RUN conda install -c conda-forge pytorch

# install R
RUN conda install -c conda-forge r-recommended
RUN conda install -c conda-forge r-irkernel
RUN conda install -c conda-forge r-irdisplay
RUN conda install -c conda-forge r-repr
RUN conda install -c conda-forge r-ggplot2

# install Seurat
RUN conda install -c bioconda r-seurat

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]

