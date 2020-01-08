#!/usr/bin/env python

import rospy
import cv2

def main():
    print "INITIALIZING COLOR SEGMENTATION NODE..."
    rospy.init_node("color_segmentation")
    loop = rospy.Rate(30)

    while not rospy.is_shutdown():
        loop.sleep()

if __name__ == "__main__":
    main()
