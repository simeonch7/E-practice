class Table < ApplicationRecord
	has_many :table_bottles
	has_many :bottles, through: :table_bottles
end
