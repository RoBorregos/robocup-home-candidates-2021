#!/usr/bin/env python

import rospy
import cv2
import cv_bridge
import numpy
from sensor_msgs.msg import Image
from sensor_msgs.msg import PointCloud2

def callback_rgb(msg):
    global img_bgr
    bridge = cv_bridge.CvBridge()
    img_bgr = bridge.imgmsg_to_cv2(msg, desired_encoding="bgr8")
    
def main():
    print "INITIALIZING COLOR SEGMENTATION NODE..."
    rospy.init_node("color_segmentation")
    rospy.Subscriber("/camera/color/image_raw"   , Image,       callback_rgb )
    loop = rospy.Rate(30)

    global img_bgr
    img_bgr = numpy.zeros((640, 480, 3), numpy.uint8) 
    while not rospy.is_shutdown():
        cv2.imshow("BGR Original", img_bgr)
        cv2.waitKey(1)
        loop.sleep()

if __name__ == "__main__":
    main()
