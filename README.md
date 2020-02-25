## A Framework for Object Detection (or other CNN applications) in Satellite or Drone Imagery

#### Reproducible Environments for Data Analysis

### Set up your environment

1. Install Docker Desktop
2. Install Git
3. Clone this repository (or the one you're using)
```
git clone https://github.com/patrickcgray/uas_obj_detection.git
```
4. Move into that directory
```
cd uas_obj_detection
```

5. Create a Docker Image and Container based on the Dockerfile in the repo:
```
docker build -t <img_name> .
docker run --name <cont_name> -it -p 8888:8888 -p 6006:6006 -v ~/:/host <img_name>
```
Your Docker image is now built and you instantiated a container from that image that is now running. Exit that container (which also stops it).
```
exit
```
Now the container is stopped, restart it and attach it to the terminal.
```
docker start <cont_name>
docker attach <cont_name>
```
Now your terminal is in the container, start jupyter:
```
jupyter notebook --allow-root --ip 0.0.0.0 /host
```

5. Navigate to the URL shown in the terminal after starting jupyter and test if everything works. Start a new jupyter notebook or open an existing one and run some simple python commands.

```
1+1
>>> 2
```
```
import numpy
```

### Now on to the data processing, analysis, and machine learning steps.

6. Do you have training data and labels? If yes skip 7, if no you'll likely spend a while doing 7.

7. Tile data and manually create labels in VIA http://www.robots.ox.ac.uk/~vgg/software/via/. There may be better tools depending on your use case. Arc is potentially viable for manual labels, but can be inaccurate without a very rigorous workflow and most CNNs will require tiles because of memory constraints anyway.
  
Make sure you generate training, validation, and testing splits of your dataset.

8. Build your deep learning model, or if you're using a pre-built CNN simply make sure it is loaded and functions correctly. This step of course may take a while for a custom model but is not as challenging as it may seem unless you're planning to do research more in the DL field itself.
  
8. Ensure labels are in the correct format for model.

9. Train the model.

10. Tweak hyperparameters on the model.

Repeat 9 and 10 until happy.

11. Now run the model on your whole dataset.
