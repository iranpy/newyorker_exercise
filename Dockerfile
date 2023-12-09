FROM python:3.10-slim

ARG NB_USER="nyorker"
ARG NB_UID="1000"
ARG NB_GID="100"

RUN useradd -m -s /bin/bash -g ${NB_GID} -u $NB_UID $NB_USER
WORKDIR /home/${NB_USER}
ENV PATH="/home/${NB_USER}/.local/bin:$PATH"

# USER ${NB_USER}

USER root

RUN apt-get update && apt-get -y upgrade \
  && apt-get install -y --no-install-recommends \
    git \
    wget \
    g++ \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh \
    && echo "Running $(conda --version)" && \
    conda init bash && \
    . /root/.bashrc && \
    conda update conda && \
    conda install python=3.10.12 pip && \
    conda create --name newyorker python=3.10.12 && \
    conda activate newyorker

RUN pip install --upgrade pip

RUN mkdir /newyorker

RUN  pip install torch  --index-url https://download.pytorch.org/whl/cpu;
COPY . /newyorker
WORKDIR /newyorker
RUN pip install -e .



# CMD ["sh","-c", "jupyter lab --notebook-dir=/notebooks --ip=0.0.0.0 --no-browser --allow-root --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}"]
EXPOSE 8888
ENTRYPOINT [ "jupyter", "lab" ]
CMD ["--port=8888", "--no-browser", "--allow-root", "--ip=0.0.0.0"]