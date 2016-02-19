Feature: Searching For A College and A Course

	Scenario: Searching for a course listing on the school website
		When I search google for a college
		When I open the first result for the college
		When I search for the course
		When I open the first result
		Then the terms-offered and prerequisite fields are returned