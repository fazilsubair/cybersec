#!/usr/bin/env python3

import sys
import time
from pymodbus.client.sync import ModbusTcpClient as ModbusClient
from pymodbus.exceptions import ConnectionException

ip = "10.10.82.27"
client = ModbusClient(ip, port=502)
client.connect()
while True:
#     client.write_register(1, 1)  # feed pump 1 or 0 
#     client.write_register(3, 1) # valve open 
#     client.write_register(4, 0) #sperateor to waster valve 

# #   client.write_register(6, 6)  # value 6 or 
#     client.write_register(7, 1) # oil level  0 to 100 assume
#     client.write_register(8, 1)
  client.write_register(1, 1)  # Keep the flow open
  client.write_register(2, 0)  # Disable oil tank sensor
  client.write_register(3, 1)  # Keep the oil tank valve open
  client.write_register(4, 0)  # Keep the seperator valve closed
  client.write_register(7, 1)  # Keep the water valve open
  client.write_register(8, 1)  # Keep the seperator valve closed
