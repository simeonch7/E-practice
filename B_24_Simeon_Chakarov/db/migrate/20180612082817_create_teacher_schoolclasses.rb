class CreateTeacherSchoolclasses < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_schoolclasses do |t|
      t.integer :teacher_id
      t.integer :schoolclass_id

      t.timestamps
    end
  end
end
