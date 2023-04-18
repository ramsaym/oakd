#!/bin/bash

#Pi-OakD - Commissioning Scripts
#https://www.youtube.com/watch?v=7BkHcJu57Cg
#@Add: local stack of scripts for specific libraries and code bases


#https://core-electronics.com.au/guides/raspberry-pi/oak-d-lite-raspberry-pi/
sudo apt-get update && upgrade
sudo curl -fL https://docs.luxonis.com/install_dependencies.sh | bash
python3 -m pip install depthai
git clone https://github.com/luxonis/depthai-python.git
cd depthai-python
cd examples
sudo python3 install_requirements.py
cd
#open cv & numpy
sudo pip3 install opencv-python
sudo pip3 install -U numpy

#depthai
sudo python3 -m pip install depthai --user
cd depthai-python/examples
sudo python3 ColorCamera/rgb_preview.py

sudo git clone https://github.com/luxonis/depthai.git

cd depthai
sudo python3 install_requirements.py
cd
echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="03e7", MODE="0666"' | sudo tee /etc/udev/rules.d/80-movidius.rules
sudo udevadm control --reload-rules && sudo udevadm trigger

sudo git clone https://github.com/luxonis/depthai-experiments.git
sudo python3 -m pip install depthai-sdk
sudo python3 -m pip install --extra-index-url https://www.piwheels.org/simple/ depthai-sdk


#extras
#sudo apt-get install freeglut3-dev
#sudo pip3 install pywavefront
#sudo pip3 install PyOpenGL
#sudo pip3 install pygame_gui -U
#sudo apt install libsdl2-ttf-2.0-0
#sudo pip3 install pywavefront
#sudo git clone https://github.com/cortictechnology/vision_ui.git
#sudo git clone https://github.com/cortictechnology/heartrate_estimation.git
