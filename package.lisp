(defpackage #:contact
  (:use #:cl
        #:dexador
        #:plump
        #:lquery
        #:lparallel)
  (:shadow get
           delete))

(defpackage #:contact/test
  (:use #:cl
        #:contact
        #:prove))
