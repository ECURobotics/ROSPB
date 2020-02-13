#!/usr/bin/env python2

from __future__ import print_function

import roslib; roslib.load_manifest('rospb_pin_write')
import rospy

from std_msgs.msg import Byte

import Pots.msg

import sys, select, termios, tty

msg = """
Reading from the keyboard  and Publishing to Twist!
---------------------------
To toggle digital pins 10-13
   D10 = '0'
   D11 = '1'
   D12 = '2'
   D13 = '3'


CTRL-C to quit
"""

pinBindings = {
    '0':(1),
    '1':(2),
    '2':(4),
    '3':(8),
    }

def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)

    pub = rospy.Publisher('rospb_digital_pin', Byte, queue_size = 10)
    sub = rospy.Subscriber('rospb_pots', Pots)
    rospy.init_node('rospb_pin_write')

    value = 0

    try:
        print(msg)
        while(1):
            key = getKey()
            if key in pinBindings.keys():
                value = pinBindings[key]
                
            else:
                value = 0
                
                if (key == '\x03'):
                    break

            packet = Byte()
            packet.data = value
            pub.publish(packet)
            packet.data = 0
            pub.publish(packet)

            print(Pots.pot1)

    except Exception as e:
        print(e)

    finally:
        packet = Byte()
        value = 0
        packet.data = value
        pub.publish(packet)

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
