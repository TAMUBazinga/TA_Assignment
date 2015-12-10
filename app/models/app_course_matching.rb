class AppCourseMatching < ActiveRecord::Base
	attr_accessible :application_pool_id, :student_application_id, :course_id, :position, :status
	
  # UNDER_REVIEW = 1
  # TEMP_ASSIGNED = 2
  # EMAIL_NOTIFIED = 3
  # STUDENT_CONFIRMED = 4
  # STUDENT_REJECTED = 5
  # ASSIGNED = 6

  FULLTA = 1
  HALFTA = 2
  GRADER = 3

end
