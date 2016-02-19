require 'page-object'

class GoogleSearchResults

  include PageObject

  div(:search_results, class: 'g')

end