require_relative '../../db/config'

class StudentsTeacher < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :student
end