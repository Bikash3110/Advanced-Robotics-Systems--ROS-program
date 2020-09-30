
(cl:in-package :asdf)

(defsystem "AR_week8_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "square_size" :depends-on ("_package_square_size"))
    (:file "_package_square_size" :depends-on ("_package"))
  ))