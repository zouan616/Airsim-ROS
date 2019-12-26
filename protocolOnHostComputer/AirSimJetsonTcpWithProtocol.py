import setup_path 
import airsim

import numpy as np
import os
import tempfile
import pprint
import cv2
import sys

import socket

import AirSimJetsonProtocol as AJP

# This code runs on desktop computer
# set up tcp 
TCP_IP = '169.254.196.15'
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
# send vehicle state to jetson
# state = client.getMultirotorState()
# s = pprint.pformat(state)
server.send("Connection from AirSim^".encode())

try:
	while 1:
		# wait for instruction from jetson
		inputString = server.recv(BUFFER_SIZE)
		AJP.explainProtocol(inputString)
		
		# wait for signal to take-off
		# data = server.recv(BUFFER_SIZE)
		# client.takeoffAsync().join()

		# # send vehicle state to jetson
		# state = client.getMultirotorState()
		# s = pprint.pformat(state)
		# server.send(s)


		# # wait for signal to fly to the position
		# data = server.recv(BUFFER_SIZE)
		# client.moveToPositionAsync(-10, 10, -10, 5).join()

		# client.hoverAsync().join()

		# # send vehicle state to jetson
		# state = client.getMultirotorState()
		# s = pprint.pformat(state)
		# server.send(s)

		# # wait for signal to fly back to origin
		# data = server.recv(BUFFER_SIZE)
		# client.armDisarm(False)
		# client.reset()
except KeyboardInterrupt:
	server.close()
	client.enableApiControl(False)
	sys.exit(0)
except Exception as e:
	print(str(e))
	#quit cleanly
	server.close()
	client.enableApiControl(False)
	sys.exit(0)

