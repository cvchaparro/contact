(defsystem #:contact
  :description "Get contact info from the web"
  :author "Cameron Chaparro <cameron+dev.contact@cameronchaparro.com>"
  :version (:read-file-form "variables" :at (0 0 1))
  :license "GPL3+"
  :depends-on (#:dexador
               #:plump
               #:lquery
               #:lparallel)
  :serial t
  :components ((:file "package")
               (:file "contact")))
