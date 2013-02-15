require_relative '../app/models/teacher'
require_relative '../app/models/student.rb'
require_relative '../app/models/students_teacher.rb'

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