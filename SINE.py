import RPi.GPIO as GPIO
import time
import numpy as np
import matplotlib.pyplot as plt
signvalues = []
GPIO.setmode(GPIO.BOARD)
GPIO.setup(38, GPIO.OUT)
GPIO.setmode(GPIO.BOARD)
GPIO.setup(12, GPIO.IN)
GPIO.setup(15, GPIO.IN)
GPIO.setup(16, GPIO.IN)
GPIO.setup(18, GPIO.IN)
GPIO.setup(22, GPIO.IN)
GPIO.setup(26, GPIO.IN)
GPIO.setup(35, GPIO.IN)
GPIO.setup(36, GPIO.IN)

k=0
while True:	
	GPIO.output(38,GPIO.HIGH)
	GPIO.setmode(GPIO.BOARD)
	no = (GPIO.input(36)<<7)+(GPIO.input(35)<<6)+(GPIO.input(26)<<5)+(GPIO.input(22)<<4)+(GPIO.input(18)<<3)+(GPIO.input(16)<<2)+(GPIO.input(15)<<1)+GPIO.input(12)
	#no = GPIO.input(15)
	print('Values:',no)	
	time.sleep(0)
	GPIO.output(38,GPIO.LOW)
	time.sleep(0)
	signvalues.append(no)
	k=k+1
	if(k==30):
		break

plt.plot(signvalues)
plt.show()
