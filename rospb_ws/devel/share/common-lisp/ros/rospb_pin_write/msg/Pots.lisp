; Auto-generated. Do not edit!


(cl:in-package rospb_pin_write-msg)


;//! \htmlinclude Pots.msg.html

(cl:defclass <Pots> (roslisp-msg-protocol:ros-message)
  ((pot1
    :reader pot1
    :initarg :pot1
    :type cl:fixnum
    :initform 0)
   (pot2
    :reader pot2
    :initarg :pot2
    :type cl:fixnum
    :initform 0)
   (A0
    :reader A0
    :initarg :A0
    :type cl:fixnum
    :initform 0)
   (A1
    :reader A1
    :initarg :A1
    :type cl:fixnum
    :initform 0)
   (A2
    :reader A2
    :initarg :A2
    :type cl:fixnum
    :initform 0)
   (A3
    :reader A3
    :initarg :A3
    :type cl:fixnum
    :initform 0)
   (A4
    :reader A4
    :initarg :A4
    :type cl:fixnum
    :initform 0)
   (A5
    :reader A5
    :initarg :A5
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Pots (<Pots>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pots>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pots)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rospb_pin_write-msg:<Pots> is deprecated: use rospb_pin_write-msg:Pots instead.")))

(cl:ensure-generic-function 'pot1-val :lambda-list '(m))
(cl:defmethod pot1-val ((m <Pots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rospb_pin_write-msg:pot1-val is deprecated.  Use rospb_pin_write-msg:pot1 instead.")
  (pot1 m))

(cl:ensure-generic-function 'pot2-val :lambda-list '(m))
(cl:defmethod pot2-val ((m <Pots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rospb_pin_write-msg:pot2-val is deprecated.  Use rospb_pin_write-msg:pot2 instead.")
  (pot2 m))

(cl:ensure-generic-function 'A0-val :lambda-list '(m))
(cl:defmethod A0-val ((m <Pots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rospb_pin_write-msg:A0-val is deprecated.  Use rospb_pin_write-msg:A0 instead.")
  (A0 m))

(cl:ensure-generic-function 'A1-val :lambda-list '(m))
(cl:defmethod A1-val ((m <Pots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rospb_pin_write-msg:A1-val is deprecated.  Use rospb_pin_write-msg:A1 instead.")
  (A1 m))

(cl:ensure-generic-function 'A2-val :lambda-list '(m))
(cl:defmethod A2-val ((m <Pots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rospb_pin_write-msg:A2-val is deprecated.  Use rospb_pin_write-msg:A2 instead.")
  (A2 m))

(cl:ensure-generic-function 'A3-val :lambda-list '(m))
(cl:defmethod A3-val ((m <Pots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rospb_pin_write-msg:A3-val is deprecated.  Use rospb_pin_write-msg:A3 instead.")
  (A3 m))

(cl:ensure-generic-function 'A4-val :lambda-list '(m))
(cl:defmethod A4-val ((m <Pots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rospb_pin_write-msg:A4-val is deprecated.  Use rospb_pin_write-msg:A4 instead.")
  (A4 m))

(cl:ensure-generic-function 'A5-val :lambda-list '(m))
(cl:defmethod A5-val ((m <Pots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rospb_pin_write-msg:A5-val is deprecated.  Use rospb_pin_write-msg:A5 instead.")
  (A5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pots>) ostream)
  "Serializes a message object of type '<Pots>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pot1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pot1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pot2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pot2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A5)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pots>) istream)
  "Deserializes a message object of type '<Pots>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pot1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pot1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pot2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pot2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'A5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'A5)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pots>)))
  "Returns string type for a message object of type '<Pots>"
  "rospb_pin_write/Pots")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pots)))
  "Returns string type for a message object of type 'Pots"
  "rospb_pin_write/Pots")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pots>)))
  "Returns md5sum for a message object of type '<Pots>"
  "87137d7724e5f2f39cedc2787f725d30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pots)))
  "Returns md5sum for a message object of type 'Pots"
  "87137d7724e5f2f39cedc2787f725d30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pots>)))
  "Returns full string definition for message of type '<Pots>"
  (cl:format cl:nil "uint16 pot1~%uint16 pot2~%uint16 A0~%uint16 A1~%uint16 A2~%uint16 A3~%uint16 A4~%uint16 A5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pots)))
  "Returns full string definition for message of type 'Pots"
  (cl:format cl:nil "uint16 pot1~%uint16 pot2~%uint16 A0~%uint16 A1~%uint16 A2~%uint16 A3~%uint16 A4~%uint16 A5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pots>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pots>))
  "Converts a ROS message object to a list"
  (cl:list 'Pots
    (cl:cons ':pot1 (pot1 msg))
    (cl:cons ':pot2 (pot2 msg))
    (cl:cons ':A0 (A0 msg))
    (cl:cons ':A1 (A1 msg))
    (cl:cons ':A2 (A2 msg))
    (cl:cons ':A3 (A3 msg))
    (cl:cons ':A4 (A4 msg))
    (cl:cons ':A5 (A5 msg))
))
