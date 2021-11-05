# Active Learning Playground
The purpose of that repository is to explore new and very popular field in Machine Learning which is called `Active Learning`. 
It's interesting for me because of several reasons:
1. It eliminates costs for labeling
2. It provides iterative way to label dataset and train your model achieving much better MVP in short time
3. It uses model knowledge to understand its weaknesses and tries to eliminate them

# Environment Set-Up

## Docker

### Build Docker Image
Build docker image with tag
```bash
docker build . --tag=active_learning
```
### Run Docker
Mapping repository root in docker work directory for easy file read/write operations. Also exposing 8888 port inside 
docker to access running jupyter notebook.
```bash
docker run -it -p 8888:8888 -v $(pwd):/home/jovyan/app active_learning:latest
```

## Anaconda

### Create environment
```bash
conda create --name active_learning python=3.8
```
### Activate environment
```bash
conda activate active_learning
```

### Install Requirements
```bash
pip install -r requirements.txt
```

### Run Jupyter Locally
```bash
jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root
```