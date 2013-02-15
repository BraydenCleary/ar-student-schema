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

teacher1 = Teacher.create!({name: 'John', email: 'john@gmail.com', phone: '4103030567'})
teacher2 = Teacher.create!({name: 'James', email: 'john@gmail.com', phone: '4105050607'})

puts teacher1.email == teacher2.email

#It works!


