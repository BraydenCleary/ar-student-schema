require_relative '../config'

class AddColumn < ActiveRecord::Migration
  def change
  	add_column :students, :teacher_id, :integer
  end
end