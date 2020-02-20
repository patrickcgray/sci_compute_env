# uas_obj_detection
Object Detection from Satellite or Drone Imagery


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
