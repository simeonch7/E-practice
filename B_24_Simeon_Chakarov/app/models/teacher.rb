class Teacher < ApplicationRecord
	has_many :teacher_schoolclasses
	has_many :schoolclasses, through: :teacher_schoolclasses
	validates :firstname , uniqueness: true
	validates :middlename, uniqueness: true
end
