;; Auto-generated. Do not edit!


(when (boundp 'rospb_pin_write::Pots)
  (if (not (find-package "ROSPB_PIN_WRITE"))
    (make-package "ROSPB_PIN_WRITE"))
  (shadow 'Pots (find-package "ROSPB_PIN_WRITE")))
(unless (find-package "ROSPB_PIN_WRITE::POTS")
  (make-package "ROSPB_PIN_WRITE::POTS"))

(in-package "ROS")
;;//! \htmlinclude Pots.msg.html


(defclass rospb_pin_write::Pots
  :super ros::object
  :slots (_pot1 _pot2 _A0 _A1 _A2 _A3 _A4 _A5 ))

(defmethod rospb_pin_write::Pots
  (:init
   (&key
    ((:pot1 __pot1) 0)
    ((:pot2 __pot2) 0)
    ((:A0 __A0) 0)
    ((:A1 __A1) 0)
    ((:A2 __A2) 0)
    ((:A3 __A3) 0)
    ((:A4 __A4) 0)
    ((:A5 __A5) 0)
    )
   (send-super :init)
   (setq _pot1 (round __pot1))
   (setq _pot2 (round __pot2))
   (setq _A0 (round __A0))
   (setq _A1 (round __A1))
   (setq _A2 (round __A2))
   (setq _A3 (round __A3))
   (setq _A4 (round __A4))
   (setq _A5 (round __A5))
   self)
  (:pot1
   (&optional __pot1)
   (if __pot1 (setq _pot1 __pot1)) _pot1)
  (:pot2
   (&optional __pot2)
   (if __pot2 (setq _pot2 __pot2)) _pot2)
  (:A0
   (&optional __A0)
   (if __A0 (setq _A0 __A0)) _A0)
  (:A1
   (&optional __A1)
   (if __A1 (setq _A1 __A1)) _A1)
  (:A2
   (&optional __A2)
   (if __A2 (setq _A2 __A2)) _A2)
  (:A3
   (&optional __A3)
   (if __A3 (setq _A3 __A3)) _A3)
  (:A4
   (&optional __A4)
   (if __A4 (setq _A4 __A4)) _A4)
  (:A5
   (&optional __A5)
   (if __A5 (setq _A5 __A5)) _A5)
  (:serialization-length
   ()
   (+
    ;; uint16 _pot1
    2
    ;; uint16 _pot2
    2
    ;; uint16 _A0
    2
    ;; uint16 _A1
    2
    ;; uint16 _A2
    2
    ;; uint16 _A3
    2
    ;; uint16 _A4
    2
    ;; uint16 _A5
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _pot1
       (write-word _pot1 s)
     ;; uint16 _pot2
       (write-word _pot2 s)
     ;; uint16 _A0
       (write-word _A0 s)
     ;; uint16 _A1
       (write-word _A1 s)
     ;; uint16 _A2
       (write-word _A2 s)
     ;; uint16 _A3
       (write-word _A3 s)
     ;; uint16 _A4
       (write-word _A4 s)
     ;; uint16 _A5
       (write-word _A5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _pot1
     (setq _pot1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pot2
     (setq _pot2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _A0
     (setq _A0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _A1
     (setq _A1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _A2
     (setq _A2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _A3
     (setq _A3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _A4
     (setq _A4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _A5
     (setq _A5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rospb_pin_write::Pots :md5sum-) "87137d7724e5f2f39cedc2787f725d30")
(setf (get rospb_pin_write::Pots :datatype-) "rospb_pin_write/Pots")
(setf (get rospb_pin_write::Pots :definition-)
      "uint16 pot1
uint16 pot2
uint16 A0
uint16 A1
uint16 A2
uint16 A3
uint16 A4
uint16 A5

")



(provide :rospb_pin_write/Pots "87137d7724e5f2f39cedc2787f725d30")


