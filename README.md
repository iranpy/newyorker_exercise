# Price Analysis
analytical, modelling and coding.


## Setup Environment
- mkdir -p ~/miniconda3
- wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
- bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
- rm -rf ~/miniconda3/miniconda.sh

conda create --name newyorker python=3.10.12
  
## Install Project
- conda activate newyorker2
- pip install torch --index-url https://download.pytorch.org/whl/cpu
- pip install -e .

### RUN jupyter Lab
Run `jupyter lab` to run application.# newyorker_exercise
