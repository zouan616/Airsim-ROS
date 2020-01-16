# bit 0: 0 means jetson needs data, 1 means jetson sends an instruction
# if bit 1 == 0
# bits 1-6: 0 means jetson doesn't need this data, 1 means jetson needs
# bits 7-15: 7th bit indicate if need image from front_center, following 8 bits indicate each type
# bits 16-24: 16th bit indicate if need image from front_right, ...
# bits 25-33: 25rd bit indicate if need image from front_left, ...
# bits 34-42: 34st bit indicate if need image from bottom_center, ...
# bits 43-51: 43th bit indicate if need image from back_center, ...
import airsim
import os
import numpy as np
import json
import rospy
import std_msgs

cameraNumbers = 5
imageTypes = 8
imageTypesOffset = imageTypes+1

pub = rospy.Publisher("airsimInfo", std_msgs.msg.String, queue_size=1)
rospy.init_node('airpub', anonymous=True)
rate = rospy.Rate(10) # 10hz

class RequestDataBits:
    state = 1
    kinematics = 2
    imu = 3
    lidar = 4
    gps = 5
    image = 6


class RequestCameraBits:
    front_center = 7
    front_right = 16
    front_left = 25
    bottom_center = 34
    back_center = 43


class imageTypeOffset():
    scene = 1
    depthPlanner = 2
    depthPerspective = 3
    depthVis = 4
    disparityNormalized = 5
    segmentation = 6
    surfaceNormals = 7
    infrared = 8

    def getTypeOffset(self,typeName):
        if typeName == "scene":
            return 1
        elif typeName == "depthPlanner":
            return 2
        elif typeName == "depthPerspective":
            return 3
        elif typeName== "depthVis":
            return 4
        elif typeName == "disparityNormalized":
            return 5
        elif typeName == "segmentation":
            return 6
        elif typeName == "surfaceNormals":
            return 7
        elif typeName == "infrared":
            return 8

class responseIndex:
    state = 0
    kinematics = 1
    imu = 2
    lidar = 3
    gps = 4
    front_center = 5
    front_right = 6
    front_left = 7
    bottom_center = 8
    back_center = 9


# can get many data at same time
# get imu,gps,front_center:scene,front_right:segmentation;infrared;depthVis,front_left:depthPlanner;depthVis
# get front_center:scene;segmentation,front_left:depthPlanner;depthVis
# get front_center:scene
def setImageBit(name,types,message):
    """ write corresponding bits for command message
    """
    cameraBit = 0
    if name == "front_center":
        cameraBit = RequestCameraBits.front_center
    elif name == "front_right":
        cameraBit = RequestCameraBits.front_right
    elif name == "front_left":
        cameraBit = RequestCameraBits.front_left
    elif name == "bottom_center":
        cameraBit = RequestCameraBits.bottom_center
    elif name == "back_center":
        cameraBit = RequestCameraBits.back_center

    message[cameraBit] = '1'
    ito = imageTypeOffset()
    for eachType in types:
        offset = ito.getTypeOffset(eachType)
        message[cameraBit+offset] = '1'


def parseCommand(inputString):
    """ Parse input command from user,
    if it is "get" command, use protocol;
    if not, return the command itself.
    """
    commandAndData = inputString.split()
    command = commandAndData[0]
    
    if command == "get":
        message = ['0' for x in range(0,52)]
        datas = commandAndData[1].split(",")
        for data in datas:
            if data == "state":
                message[RequestDataBits.state] = '1'
            elif data == "kinematics":
                message[RequestDataBits.kinematics] = '1'
            elif data == "imu":
                message[RequestDataBits.imu] = '1'
            elif data == "lidar":
                message[RequestDataBits.lidar] = '1'
            elif data == "gps":
                message[RequestDataBits.gps] = '1'
            else:
                message[RequestDataBits.image] = '1'
                nameAndType = data.split(":")
                name = nameAndType[0]
                types = nameAndType[1].split(";")
                setImageBit(name,types,message)

        finalMessage = "".join(message)
        return finalMessage
    return inputString


def parseAirsimMessage(inputString):
    """ Parse message from airsim,
    mainly for data converted from images
    """
    datas = inputString.split('biu')
    rospy.loginfo(inputString)
    pub.publish(inputString)
    
    if len(datas) > 2:
        imu = json.loads(datas[responseIndex.imu])
        gps = json.loads(datas[responseIndex.gps])
        fc = datas[responseIndex.front_center]
        fr = datas[responseIndex.front_right]
        fl = datas[responseIndex.front_left]
        bc = datas[responseIndex.bottom_center]
        backc = datas[responseIndex.back_center]
        #print(imu)
        #print(fc)
        #response = fc[1:-1]
        #img1d = np.fromstring(response.image_data_uint8, dtype=np.uint8)
        #img_rgba = img1d.reshape(response.height, response.width, 4)
        #airsim.write_png(os.path.normpath('camera.png'), img_rgba)
        #print("save image !")
        for data in datas:
            if len(data) > 5:
                print(data)
    else:
        print(inputString)

    return
