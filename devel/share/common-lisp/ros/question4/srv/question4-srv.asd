
(cl:in-package :asdf)

(defsystem "question4-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointPosition" :depends-on ("_package_JointPosition"))
    (:file "_package_JointPosition" :depends-on ("_package"))
  ))