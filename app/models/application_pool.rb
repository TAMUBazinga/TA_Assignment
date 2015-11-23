class ApplicationPool < ActiveRecord::Base
    attr_accessible :year, :semester, :deadline, :active

    def self.getAppPoolYearSemester(id)
	   	
	   	if not id
	   		return ""
	   	else
	   		@application_pool = ApplicationPool.find(id)
			return "#{@application_pool.year} #{@application_pool.semester}"
		end
    end
end
