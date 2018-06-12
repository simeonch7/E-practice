class Bottle < ApplicationRecord
	has_many :table_bottles
	has_many :tables, through: :table_bottles
	validates :brand , uniqueness: true
	validates_presence_of :table_id
end
