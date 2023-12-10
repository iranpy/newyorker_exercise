# Price Analysis
analytical, modelling and coding.


## Setup Environment 

### Install with Conda
- mkdir -p ~/miniconda3
- wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
- bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
- rm -rf ~/miniconda3/miniconda.sh
  
- conda create --name newyorker python=3.10.12
- conda activate newyorker
- pip install torch --index-url https://download.pytorch.org/whl/cpu
- pip install -e .
- Run `jupyter lab` to run application.

### Install with Docker

- docker build  --rm -t newyorker .
- docker run -it -p 8888:8888  newyorker:latest
