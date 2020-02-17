import socket, sys
import select
import tcpProtocol as tp
import traceback

# This code runs on Jetson board
def main():
    try:
        TCP_IP = '172.16.21.54'
        TCP_PORT = 5005
        BUFFER_SIZE = 2048

        server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        server.bind((TCP_IP, TCP_PORT))
        server.listen(1)

        # Sockets from which we expect to read
        inputs = [ server ]

        # Sockets to which we expect to write
        outputs = [ ]
        write = False

        keepReading = False
        tempString = ""
        while 1:
            readable, writable, exceptional = select.select(inputs, outputs, inputs,0)
            if len(readable) > 0:
                # Handle inputs
                for s in readable:
                    if s is server:
                        # A "readable" server socket is ready to accept a connection
                        connection, client_address = s.accept()
                        print("new connection from '{0}'".format(client_address))
                        connection.setblocking(0)
                        inputs.append(connection)
                    else:
                        data = s.recv(BUFFER_SIZE)
                        dataString = data.decode("utf-8")
                        if keepReading:
                            tempString += dataString
                            if tempString[-1] == "^":
                                tp.parseAirsimMessage(tempString)
                                keepReading = False
                                tempString = ""
                                write = True
                        else:
                            if not data:
                                # Interpret empty result as closed connection
                                print("closing '{0}' after reading no data".format(client_address))
                                if s in outputs:
                                    outputs.remove(s)
                                inputs.remove(s)
                                s.close()
                            elif dataString[-1] == "^":
                                # this is the entire message
                                tp.parseAirsimMessage(dataString)
                                if s not in outputs:
                                    outputs.append(s)
                                if s not in writable:
                                    writable.append(s)
                                write = True
                            else:
                                # this is not the entire message
                                # need to keep reading
                                tempString = dataString
                                keepReading = True
                                                
            if write:
                # currently, only write after reading something
                for s in writable:
                    nextStep = input("Give the command:")
                    message = tp.parseCommand(nextStep)
                    s.send(message.encode())
                write = False

            # Handle "exceptional conditions"
            for s in exceptional:
                print("handling exceptional condition for '{0}'".format(s.getpeername()))
                # Stop listening for input on the connection
                inputs.remove(s)
                if s in outputs:
                    outputs.remove(s)
                s.close()

    except KeyboardInterrupt:
        if inputs:
            for s in inputs:
                s.close()

        if outputs:
            for s in outputs:
                s.close()
        server.close()
        sys.exit(0)
    except Exception as e:
        print(traceback.format_exc())
        print(str(e))
        if inputs:
            for s in inputs:
                s.close()

        if outputs:
            for s in outputs:
                s.close()
        server.close()
        sys.exit(0)
        
    
if __name__ == "__main__":
    main()
