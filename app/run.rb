# require 'rspec'
# require 'date'
# require_relative '../app/models/teacher'

# puts Teacher.all.each { |teacher| puts teacher.email }

# describe Teacher, "validations" do


# 	it "should not accept duplicate emails" do
#     ["joe@example.com", "joe@example.com", "bugs@devbootcamp.com"].each do |address|
#     	@teacher = Teacher.new
#       @teacher.email = address
#       @teacher.save
#       puts @teacher.object_id
#       @teacher.should_not be_valid
#     end
#   end
# end

require_relative '../app/models/teacher'
require_relative '../app/models/student.rb'
require_relative '../app/models/students_teacher.rb'

#Test unique email
begin
teacher1 = Teacher.create!({name: 'John', email: 'john@gmail.com', phone: '4103030567'})
teacher2 = Teacher.create!({name: 'James', email: 'john@gmail.com', phone: '4105050607'})
rescue
	puts "Email must be unique!"
end

#populating teacher_id column in students table
teachers = (1..Teacher.all.count)
students = (1..Student.all.count)	

Student.all.each do |student|
	student.teacher_id = rand(1..9)
	student.save
end

#associations are working
Student.where(:teacher_id => 4)

Teacher.find(1).students

#requirements changed to many to many relationship
StudentsTeacher.create({teacher_id: 1, student_id: 1})
StudentsTeacher.create({teacher_id: 1, student_id: 2})
StudentsTeacher.create({teacher_id: 3, student_id: 1})

puts Student.find(1).teachers
puts Teacher.find(1).students
#many to many relationship is working!