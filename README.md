# uas_obj_detection
Framework for Object Detection (or other CNN applications) in Satellite or Drone Imagery

tiles vs object detection vs 

1. Install Docker Desktop
2. Install Git
3. Clone this repository 
```
git clone <.>
```

```
cd uas_obj_detection
```

4. Create a Docker Image and Container based on the Dockerfile in this repo

```
docker build -t <img_name> .
docker run --name <cont_name> -it -p 8888:8888 -p 6006:6006 -v ~/:/host <img_name>
```

```
exit
```

```
docker start <cont_name>
docker attach <cont_name>
```
Now you're in the container, start jupyter
```
jupyter notebook --allow-root --ip 0.0.0.0 /host
```

5. Test to see if everything works.

Open jupyter notebook and run soem simple python commands.

```
1+1
import numpy
```

6. Do you have training data and labels?

if yes skip 7

7. Tile data and manually create labels in VIA http://www.robots.ox.ac.uk/~vgg/software/via/
  there may be better tools depending on your use case. Arc is potentially viable.
  
  Generate training, validation, and testing datasets.
  
  
8. Ensure labels are in the correct format for CNN.


9. Train the CNN


10. Tweak hyperparameters on the CNN

repeat 9 and 10 until happy.


Repo using RetinaNet for object detection in remotely sensed imagery along with a set of tools for using geospatial data with CNNs.

For Dockerfile users simply run the Dockerfile and your environment will be automatically set up.

For Colab users you will need to:
* git clone Keras-RetinaNet
https://github.com/fizyr/keras-retinanet

* run setup on that repo

* install this repo

* pip install the requirements.txt file

* need to add apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0 per https://github.com/NVIDIA/nvidia-docker/issues/864 based on error after installing opencv-python

* need to run apt-get install wget to download model

* download the imagery


* keras needs to be updated to 2.3.0
