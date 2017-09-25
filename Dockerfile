FROM python:2.7
COPY . /var/app

WORKDIR /var/app
#install virtual environment

RUN pip install virtualenv
RUN virtualenv /var/app
#install numpy, scipy, and required packages to build

#RUN apt-get update
#RUN apt-get install -y libblas-dev liblapack-dev liblapacke-dev gfortran
#RUN pip install --upgrade pip
#RUN pip install numpy==1.10.4
#RUN pip install scipy==0.17.0



CMD ["python", "/var/app/helloworld.py","20480","10"]


#build the image with same tag as the docker hub
#docker build -t joyrahman/helloworld_kubernetes:v1 .


#push it
#docker push joyrahman/helloworld_kubernetes:v1
