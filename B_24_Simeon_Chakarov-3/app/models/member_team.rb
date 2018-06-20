class MemberTeam < ApplicationRecord
	belongs_to :team
	belongs_to :member
	
	validate do 
		if has_team_with_color? Team.find(self.team_id).color
				errors.add(:team, "There is already team with this color")
		end
	end
	
	private
	def has_team_with_color? color
	MemberTeam.where(member_id: self.member_id).each do |mt|
		if color==Team.find(mt.team_id).color
			return true
		end
	end
	false
	end
end
