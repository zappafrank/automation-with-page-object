require 'page-object'

class CsccSearchResults

  include PageObject

  tables(:search_results, class: 'gsc-table-result')

end