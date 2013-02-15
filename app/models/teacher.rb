require_relative '../../db/config'

class Teacher < ActiveRecord::Base
	has_many :students_teachers
	has_many :students, :through => :students_teachers

	validates :email, :uniqueness => true
end