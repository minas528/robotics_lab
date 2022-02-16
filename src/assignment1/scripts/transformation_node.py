import rospy
import numpy as np
from assignment1.srv import NewPosition, NewPositionResponse
import math

def callback(request):
    alph = math.pi/180 * request.alpha
    bet = math.pi/180 * request.beta
    gam = math.pi/180 * request.gamma
    xx = np.array([[1,0,0], [0, math.cos(alph), math.sin(-1*alph)], [0, math.sin(alph), math.cos(alph)]])
    yy = np.array([[math.cos(bet),0,math.sin(bet)], [0,1,0], [math.sin(-1*bet), 0, math.cos(bet)]])
    zz = np.array([[math.cos(gam), math.sin(-1*gam), 0], [math.sin(gam), math.cos(gam),0], [0,0,1]])
    result = np.dot(np.dot(np.dot(xx, yy), zz), np.array([[request.x], [request.y], [request.z]]))
    return NewPositionResponse(result[0]+request.d, result[1], result[2])

def transform():
    rospy.init_node("Transformation")
    service = rospy.Service("transform", NewPosition, callback)
    rospy.spin()

if __name__ == '__main__':
    transform()