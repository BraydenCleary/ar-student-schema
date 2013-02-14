require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    	t.string :name 
    	s.string :email
    	s.string :phone
    end
  end
end