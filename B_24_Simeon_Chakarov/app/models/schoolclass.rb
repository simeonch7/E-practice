class Schoolclass < ApplicationRecord
	has_many :teacher_schoolclasses
	has_many :teachers, through: :teacher_schoolclasses
	validates_presence_of :teacher_id
end
