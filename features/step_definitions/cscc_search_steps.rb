require 'page-object'
include PageObject::PageFactory

When(/^I search google for a college$/) do
  visit_page(GoogleHome) do |page|

    page.search_for 'columbus state community college'

  end

  on_page(GoogleSearchResults) do |page|

    expect(page.search_results.size).to be > 0

  end
end

When(/^I open the first result for the college$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I search for the course$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I open the first result$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the terms\-offered and prerequisite fields are returned$/) do
  pending # Write code here that turns the phrase above into concrete actions
end