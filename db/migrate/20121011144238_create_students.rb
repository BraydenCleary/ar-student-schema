require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |s|
    	s.string :first_name
    	s.string :last_name
    	s.string :gender
    	s.date :birthday
    	s.string :email
    	s.string :phone
    end
  end
end
