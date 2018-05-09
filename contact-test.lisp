(in-package #:contact/test)

(plan 1)

(subtest "unit test: get-search-url"
  (is (get-search-url "") *duckduckgo-search-url*
      "returns base url when passed an empty search string")
  (is (get-search-url "cameron") (concatenate 'string *duckduckgo-search-url* "cameron")
      "returns base url with single-word search string")
  (is (get-search-url "cameron chaparro is awesome")
      (concatenate 'string *duckduckgo-search-url* "cameron%20chaparro%20is%20awesome")
      "returns base url with multiword 'url-encoded' search string."))

(finalize)
