require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreatStudentTeacherJoinTable < ActiveRecord::Migration

  def change
    create_table :students_teachers, id: false do |t|
      t.integer :student_id
      t.integer :part_id
    end
  end 
end
