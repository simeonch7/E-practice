class CreateMemberTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :member_teams do |t|
      t.integer :team_id
      t.integer :member_id

      t.timestamps
    end
  end
end
