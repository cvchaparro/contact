(in-package #:contact/test)

(plan 2)

(subtest "unit test: url-encode"
  (is (url-encode "") ""
      "returns empty string when passed an empty search string")
  (is (url-encode "cameron") "cameron"
      "returns original search string when passed single-word search string")
  (is (url-encode "cameron chaparro rocks") "cameron+chaparro+rocks"
      "returns '+'-separated string when passed multiword search string"))

(subtest "unit test: get-search-url"
  (is (get-search-url "") *duckduckgo-search-url*
      "returns base url when passed an empty search string")
  (is (get-search-url "cameron") (concatenate 'string *duckduckgo-search-url* "cameron")
      "returns base url with single-word search string")
  (is (get-search-url "cameron chaparro is awesome")
      (concatenate 'string *duckduckgo-search-url* "cameron+chaparro+is+awesome")
      "returns base url with multiword 'url-encoded' search string."))

(finalize)
