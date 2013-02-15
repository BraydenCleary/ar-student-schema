require_relative '../app/models/student'

module StudentsImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/students.csv")
    field_names = nil
    Student.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          teacher_count = Teacher.all.count
          attribute_hash = Hash[field_names.zip(data)]
          student = Student.create!(attribute_hash)
          student.teacher_id = rand(1..teacher_count)
          student.save
          puts student.teacher_id
        end
      end
    end
  end
end
