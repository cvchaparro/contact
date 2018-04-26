(defsystem #:contact
  :description "Get contact info from the web"
  :author "Cameron Chaparro <cameron+dev.contact@cameronchaparro.com>"
  :license "GPL3+"
  :depends-on (#:dexador
               #:plump
               #:lquery
               #:lparallel)
  :serial t
  :components ((:file "package")
               (:file "contact")))
