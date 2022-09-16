import pymysql.cursors  
import RPi.GPIO as GPIO          
from time import sleep

in1 = 24
in2 = 23
en = 25
temp1=1
R = 12
G = 16
B = 21
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(in1,GPIO.OUT)
GPIO.setup(in2,GPIO.OUT)
GPIO.setup(en,GPIO.OUT)
GPIO.setup(R,GPIO.OUT)
GPIO.setup(G,GPIO.OUT)
GPIO.setup(B,GPIO.OUT)
p=GPIO.PWM(en,1000)
GPIO.output(in1,GPIO.LOW)
GPIO.output(in2,GPIO.LOW)
GPIO.output(R,GPIO.LOW)
GPIO.output(G,GPIO.LOW)
GPIO.output(B,GPIO.LOW)


p.start(25)
# Kết nối vào database.
while(1):
    connection = pymysql.connect(host='localhost',
                                user='MinhTanVu',
                                password='01247958968',                             
                                db='dongco',
                                )  
    with connection.cursor() as cursor:
        # SQL 
        sql = "SELECT x FROM dc"        
        # Thực thi câu lệnh truy vấn (Execute Query).
        cursor.execute(sql)
        result = cursor.fetchall()
        y = result[-1]
        for x in y:
            print(x)      
            if x=='r':
                print("run")
                if(temp1==1):
                 GPIO.output(in1,GPIO.HIGH)
                 GPIO.output(in2,GPIO.LOW)
                 GPIO.output(R,GPIO.LOW)
                 GPIO.output(G,GPIO.LOW)
                 GPIO.output(B,GPIO.HIGH)
                 print("forward")
                 x='z'
                else:
                 GPIO.output(in1,GPIO.LOW)
                 GPIO.output(in2,GPIO.HIGH)
                 print("backward")
                 x='z'
            elif x=='s':
                print("stop")
                GPIO.output(in1,GPIO.LOW)
                GPIO.output(in2,GPIO.LOW)
                GPIO.output(R,GPIO.LOW)
                GPIO.output(G,GPIO.LOW)
                GPIO.output(B,GPIO.LOW)
                x='z'
            elif x=='f':
                print("forward")
                GPIO.output(in1,GPIO.HIGH)
                GPIO.output(in2,GPIO.LOW)
                temp1=1
                x='z'
            elif x=='b':
                print("backward")
                GPIO.output(in1,GPIO.LOW)
                GPIO.output(in2,GPIO.HIGH)
                temp1=0
                x='z'
            elif x=='l':
                print("low")
                p.ChangeDutyCycle(25)
                GPIO.output(R,GPIO.LOW)
                GPIO.output(G,GPIO.LOW)
                GPIO.output(B,GPIO.HIGH)
                x='z'
            elif x=='m':
                print("medium")
                p.ChangeDutyCycle(50)
                GPIO.output(R,GPIO.LOW)
                GPIO.output(G,GPIO.HIGH)
                GPIO.output(B,GPIO.LOW)
                x='z'

            elif x=='h':
                print("high")
                p.ChangeDutyCycle(90)
                GPIO.output(R,GPIO.HIGH)
                GPIO.output(G,GPIO.LOW)
                GPIO.output(B,GPIO.LOW)
                x='z'
            elif x=='e':
                GPIO.cleanup()
                print("GPIO Clean up")
                connection.close()
                break   
    # Đóng kết nối (Close connection).
