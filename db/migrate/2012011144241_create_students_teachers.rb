class CreateStudentsTeachers < ActiveRecord::Migration
  def change
  	create_table :students_teachers do |s|
  		s.integer :teacher_id
  		s.integer :student_id
  	end
  end
end