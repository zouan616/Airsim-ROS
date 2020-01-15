# bit 0: 0 means jetson needs data, 1 means jetson sends an instruction
# if bit 1 == 0
# bits 1-6: 0 means jetson doesn't need this data, 1 means jetson needs
# bits 7-15: 7th bit indicate if need image from front_center, following 8 bits indicate each type
# bits 16-24: 16th bit indicate if need image from front_right, ...
# bits 25-33: 25rd bit indicate if need image from front_left, ...
# bits 34-42: 34st bit indicate if need image from bottom_center, ...
# bits 43-51: 43th bit indicate if need image from back_center, ...
import airsim
import sys
import numpy as np

cameraNumbers = 5
imageTypes = 8
imageTypesOffset = imageTypes+1
client = None
tcpServer = None

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


class imageTypeOffset:
	scene = 1
	depthPlanner = 2
	depthPerspective = 3
	depthVis = 4
	disparityNormalized = 5
	segmentation = 6
	surfaceNormals = 7
	infrared = 8


def getImageType(typeS):
	typeN = int(typeS)
	if typeN == 1:
		return "scene"
	elif typeN == 2:
		return "depthPlanner"
	elif typeN == 3:
		return "depthPerspective"
	elif typeN == 4:
		return "depthVis"
	elif typeN == 5:
		return "disparityNormalized"
	elif typeN == 6:
		return "segmentation"
	elif typeN == 7:
		return "surfaceNormals"
	elif typeN == 8:
		return "infrared"


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


def setClient(newAirsimClient):
	global client
	client = newAirsimClient


def setServer(newServer):
	global tcpServer
	tcpServer = newServer


def explainProtocol(inputString):
	inputString = inputString.decode()
	print(inputString)
	if inputString[0] == '0':
		print("jetson want something")
		# can have at most 5 data and images from each camera
		AllData = ['None' for x in range(0,10)]
		getData(inputString,AllData)
		# send data, how ?
		# create a new thread ?
		for index,val in enumerate(AllData):
			if val != "biu":
				AllData.insert(index+1,"biu")

		message = "".join(AllData)
		message = message + "^"
		tcpServer.send(message.encode())
	elif inputString == "end":
		tcpServer.close()
		client.enableApiControl(False)
		sys.exit(0)
	else:
		# do the instruction and catch exception if not valid
		command = "client." + inputString
		print(command)
		try:
			exec(command)
			tcpServer.send("execution succeed^".encode())
		except Exception as e:
			tcpServer.send("execution fail^".encode())

	return 


def getData(inputString,AllData):
	print("get sensor data")
	if inputString[RequestDataBits.state] == '1':
		AllData[responseIndex.state] = str(client.getMultirotorState())

	if inputString[RequestDataBits.kinematics] == '1':
		AllData[responseIndex.kinematics] = str(client.getMultirotorState().kinematics_estimated)

	if inputString[RequestDataBits.imu] == '1':
		AllData[responseIndex.imu] = str(client.getImuData())

	if inputString[RequestDataBits.lidar] == '1':
		AllData[responseIndex.lidar] = str(client.getLidarData())

	if inputString[RequestDataBits.gps] == '1':
		AllData[responseIndex.gps] = str(client.getGpsData())

	if inputString[RequestDataBits.image] == '1':
		getImage(inputString,AllData)

	return


def getImage(inputString,AllData):
	print("get images")
	imageCommands = "client.simGetImages(["

	fcOffset = 0
	if inputString[RequestCameraBits.front_center] == '1':
		cameraId = 0
		typeIndicators = inputString[RequestCameraBits.front_center+1:RequestCameraBits.front_center+imageTypesOffset]
		for index,value in enumerate(typeIndicators):
			if value == '1':
				commandString = "airsim.ImageRequest(" + str(cameraId) + "," + str(index) + ",False,False),"
				imageCommands += commandString
				fcOffset += 1


	frOffset = fcOffset
	if inputString[RequestCameraBits.front_right] == '1':
		cameraId = 1
		allimageTypes = []
		typeIndicators = inputString[RequestCameraBits.front_right+1:RequestCameraBits.front_right+imageTypesOffset]
		for index,value in enumerate(typeIndicators):
			if value == '1':
				commandString = "airsim.ImageRequest(" + str(cameraId) + "," + str(index) + ",False,False),"
				imageCommands += commandString
				frOffset += 1


	flOffset = frOffset
	if inputString[RequestCameraBits.front_left] == '1':
		cameraId = 2
		allimageTypes = []
		typeIndicators = inputString[RequestCameraBits.front_left+1:RequestCameraBits.front_left+imageTypesOffset]
		for index,value in enumerate(typeIndicators):
			if value == '1':
				commandString = "airsim.ImageRequest(" + str(cameraId) + "," + str(index) + ",False,False),"
				imageCommands += commandString
				flOffset += 1


	bcOffset = flOffset
	if inputString[RequestCameraBits.bottom_center] == '1':
		cameraId = 3
		allimageTypes = []
		typeIndicators = inputString[RequestCameraBits.bottom_center+1:RequestCameraBits.bottom_center+imageTypesOffset]
		for index,value in enumerate(typeIndicators):
			if value == '1':
				commandString = "airsim.ImageRequest(" + str(cameraId) + "," + str(index) + ",False,False),"
				imageCommands += commandString
				bcOffset += 1


	backcOffset = bcOffset
	if inputString[RequestCameraBits.back_center] == '1':
		cameraId = 4
		allimageTypes = []
		typeIndicators = inputString[RequestCameraBits.back_center+1:RequestCameraBits.back_center+imageTypesOffset]
		for index,value in enumerate(typeIndicators):
			if value == '1':
				commandString = "airsim.ImageRequest(" + str(cameraId) + "," + str(index) + ",False,False),"
				imageCommands += commandString
				backcOffset += 1


	# remove last comma
	imageCommands = imageCommands[:-1]
	imageCommands = "responses = " + imageCommands + "])"
	print(imageCommands)
	exec(imageCommands)

	fcImages = responses[0:fcOffset]
	frImages = responses[fcOffset:frOffset]
	flImages = responses[frOffset:flOffset]
	bcImages = responses[flOffset:bcOffset]
	backcImages = responses[bcOffset:]
	print(len(responses))

	AllData[responseIndex.front_center] = str(fcImages)
	AllData[responseIndex.front_right] = str(frImages)
	AllData[responseIndex.front_left] = str(flImages)
	AllData[responseIndex.bottom_center] = str(bcImages)
	AllData[responseIndex.back_center] = str(backcImages)

	#print(fcImages)
	# for data in responses:
	# 	print(data)
	
	return



# nextStep = raw_input("Give the command:")
# explainProtocol(nextStep)

# imageString = ['0' for x in range(52)]
# imageString[RequestCameraBits.front_center] = '1'
# imageString[RequestCameraBits.front_center+imageTypeOffset.scene] = "1"
# imageString[RequestCameraBits.front_center+imageTypeOffset.depthPlanner] = "1"
# imageString[RequestCameraBits.front_center+imageTypeOffset.segmentation] = "1"

# imageString[RequestCameraBits.back_center] = '1'
# imageString[RequestCameraBits.back_center+imageTypeOffset.segmentation] = "1"
# c = "".join(imageString)
# getImage(c,[])