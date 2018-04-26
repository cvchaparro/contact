;;;; contact.asd

(asdf:defsystem #:contact
  :description "Describe contact here"
  :author "Cameron Chaparro <cameron+dev.contact@cameronchaparro.com>"
  :license "GPL3+"
  :depends-on (#:dexador
               #:plump
               #:lquery
               #:lparallel)
  :serial t
  :components ((:file "package")
               (:file "contact")))

