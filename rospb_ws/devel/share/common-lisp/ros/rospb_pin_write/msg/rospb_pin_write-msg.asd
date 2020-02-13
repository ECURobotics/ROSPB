
(cl:in-package :asdf)

(defsystem "rospb_pin_write-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pots" :depends-on ("_package_Pots"))
    (:file "_package_Pots" :depends-on ("_package"))
  ))