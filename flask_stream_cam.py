import cv2
import numpy as np
from flask import Flask, Response, make_response


gst_str = ("nvarguscamerasrc ! video/x-raw(memory:NVMM), width=(int)1280, height=(int)720, format=(string)NV12, framerate=(fraction)60/1 ! nvvidconv flip-method=0 ! video/x-raw, width=(int)1280, height=(int)720, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink")
#gst_str = ("v4l2src device=/dev/video1 ! video/x-raw, width=640, height=480, format=(string)YUY2,framerate=30/1 ! videoconvert ! video/x-raw,width=640,height=480,format=BGR ! appsink")

app = Flask(__name__)
video = cv2.VideoCapture(gst_str)
@app.route('/')
def index():
    return "Default Message"

def gen(video):
    while True:
        success, image = video.read()
        ret, jpeg = cv2.imencode('.jpg', image)
        frame = jpeg.tobytes()
        yield (b'--frame\r\n'
               b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n\r\n')

@app.route('/video_feed')
def video_feed():
    global video
    return Response(gen(video),
                    mimetype='multipart/x-mixed-replace; boundary=frame')

@app.route('/frame_feed', methods=['POST'])
def frame_feed():
    global video
    _, image = video.read()
    _, imgencoded = cv2.imencode('.jpg', image)
    return make_response(imgencoded.tobytes())


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, threaded=True)