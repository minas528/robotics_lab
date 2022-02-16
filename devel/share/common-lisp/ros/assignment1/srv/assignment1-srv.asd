
(cl:in-package :asdf)

(defsystem "assignment1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NewPosition" :depends-on ("_package_NewPosition"))
    (:file "_package_NewPosition" :depends-on ("_package"))
  ))