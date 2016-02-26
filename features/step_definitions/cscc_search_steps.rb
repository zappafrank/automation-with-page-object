require 'page-object'
include PageObject::PageFactory

When(/^I search google for a college$/) do
  visit_page(GoogleHome) do |page|

    page.search_for 'columbus state'
    sleep 5
  end

end

When(/^I open the first result for the college$/) do
  visit_page(GoogleSearchResults) do |page|

    page.search_results_elements[0].div.h3.a.click

  end
end

When(/^I search for the course$/) do
  on_page(CsccHome) do |page|

    page.search_for 'csci-2994'
    sleep 5

  end
end

When(/^I open the first result$/) do
  visit_page(CsccSearchResults) do |page|

    page.search_results_elements[0].tbody.tr.div.a.click

  end

  @browser.windows.last.use

end

Then(/^the terms\-offered and prerequisite fields are returned$/) do
  on_page(CourseSearchResults) do |page|
    expect(page.terms_offered).to eq 'On Demand'
    expect(page.prerequisites).to eq 'None'
  end
end