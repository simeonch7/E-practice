

    /bin/bash --login
    rails new B_24_Simen_Chakarov
    gedit Gemfile -> gem 'therubyracer'
    bundle install

5.rails g scaffold Teacher firstname:string middlename:string title:string subject:string 6.rails g scaffold Schoolclass day:string teacher_id:integer 7.rails g scaffold teacher_schoolclass teacher_id:integer schoolclass_id:integer

За teacher : class Teacher < ApplicationRecord has_many :teacher_schoolclasses has_many :schoolclasses, through: :teacher_schoolclasses validates :firstname , uniqueness: true validates :middlename, uniqueness: true end

За schoolclass: class Schoolclass < ApplicationRecord has_many :teacher_schoolclasses has_many :teachers, through: :teacher_schoolclasses validates_presence_of :teacher_id end

За х2: class TeacherSchoolclass < ApplicationRecord belongs_to :schoolclass belongs_to :teacher end

За x2 в Controllers: def index @teacher_schoolclasses = TeacherSchoolclass.all @teachers = Teacher.all @schoolclasses = Schoolclass.all end

Unique adress:

Route: get "/B_24_Simeon_Chakarov_teacher_schoolclasses", to: "teacher_schoolclasses#index"

HTML: <% @teacher_schoolclasses.each do |teacher_schoolclass| %> <%= teacher_schoolclass.teacher.firstname %> <%= teacher_schoolclass.teacher.title %> <%= teacher_schoolclass.schoolclass.day%> <% end %>

validate do if has_team_with_color? Team.find(self.team_id).color errors.add(:team, "There is already team with this color") end end

private def has_team_with_color? color MemberTeam.where(member_id: self.member_id).each do |mt| if color==Team.find(mt.team_id).color return true end end false end
