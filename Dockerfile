# Apache Beam stable docker image from DockerHUB
FROM jupyter/base-notebook

# Create working directory
RUN mkdir /home/jovyan/app

# Copy sources
COPY ./ /home/jovyan/app/
COPY ./requirements.txt /home/jovyan/app/requirements.txt

# Move to working directory
WORKDIR /home/jovyan/app

# Install Requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

## Run
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]