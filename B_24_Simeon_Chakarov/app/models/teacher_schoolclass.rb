class TeacherSchoolclass < ApplicationRecord
	belongs_to :schoolclass
	belongs_to :teacher
end
