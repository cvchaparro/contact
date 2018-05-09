(defpackage #:contact
  (:use #:cl
        #:dexador
        #:plump
        #:lquery
        #:lparallel
        #:quri)
  (:shadow get
           delete)
  (:export
   #:*duckduckgo-search-url*
   #:get-search-url))

(defpackage #:contact/test
  (:use #:cl
        #:contact
        #:prove))
