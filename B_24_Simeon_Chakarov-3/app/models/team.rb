class Team < ApplicationRecord
	has_many :member_teams
	has_many :members, through: :member_teams
end
