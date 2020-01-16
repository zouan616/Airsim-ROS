import airsim

import cv2
import sys

import socket

import AirSimJetsonProtocol as AJP

# This code runs on desktop computer
# set up tcp 
TCP_IP = '172.16.21.209'
TCP_PORT = 5005
BUFFER_SIZE = 100

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.connect((TCP_IP, TCP_PORT))

AJP.setServer(server)

# connect to the AirSim simulator
# the client here means the Airsim client for vehicle
client = airsim.MultirotorClient()
client.confirmConnection()
client.enableApiControl(True)
client.armDisarm(True)

AJP.setClient(client)
server.send("Connection from AirSim^".encode())

try:
	while 1:
		# wait for instruction from jetson
		inputString = server.recv(BUFFER_SIZE)
		AJP.explainProtocol(inputString)

except KeyboardInterrupt:
	server.close()
	client.enableApiControl(False)
	sys.exit(0)
except Exception as e:
	print(str(e))
	server.close()
	client.enableApiControl(False)
	sys.exit(0)

