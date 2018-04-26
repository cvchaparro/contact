(defpackage #:contact
  (:use #:cl
        #:dexador
        #:plump
        #:lquery
        #:lparallel)
  (:shadow get
           delete)
  (:export
   #:*duckduckgo-search-url*
   #:url-encode
   #:get-search-url))

(defpackage #:contact/test
  (:use #:cl
        #:contact
        #:prove))
