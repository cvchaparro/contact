(in-package #:contact)

(defparameter *duckduckgo-search-url* "https://duckduckgo.com/html/?q="
  "Base URL for a DuckDuckGo search")

(defun get-search-url (search-string)
  "Create a complete url from the base search url and SEARCH-STRING."
  (concatenate 'string
               *duckduckgo-search-url*
               (quri:url-encode search-string)))
