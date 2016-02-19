require 'page-object'

class CsccSearchResults

  include PageObject

  divs(:search_results, class: 'g')

end