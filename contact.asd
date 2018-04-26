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
               (:file "contact"))
  :in-order-to ((test-op (test-op #:contact/test))))

(defsystem #:contact/test
  :description "Tests for the contact system"
  :depends-on (#:contact
               #:prove)
  :components ((:file "package")
               (:file "contact-test"))
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run) :prove) c)))
