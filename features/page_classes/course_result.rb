require 'page-object'

class CourseSearchResults

  include PageObject

  div(:course_info, id: 'course-info')

  def terms_offered()
    self.course_info_element.ps[1].text
  end

  def prerequisites()
    self.course_info_element.ps[4].text
  end
end