(in-package #:contact)

(defparameter *duckduckgo-search-url* "https://duckduckgo.com/html/?q="
  "Base URL for a DuckDuckGo search")

(defun url-encode (untrusted-string)
  "Encode UNTRUSTED-STRING to allow it to be used inside a url."
  (substitute-if #\+ (lambda (char) (equalp char #\Space)) untrusted-string))

(defun get-search-url (search-string)
  "Create a complete url from the base search url and SEARCH-STRING."
  (concatenate 'string
               *duckduckgo-search-url*
               (url-encode search-string)))
