require 'rspec'
require 'date'
require_relative '../app/models/teacher'

describe Teacher, "validations" do

	it "should not accept duplicate emails" do
		@teacher_1 = Teacher.create({name: 'John', email: 'john@gmail.com', phone: '4103030567'})
		@teacher_2 = Teacher.create({name: 'James', email: 'john@gmail.com', phone: '4105050607'})
    @teacher_2.should_not be_valid
  end

end