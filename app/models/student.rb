require_relative '../../db/config'

class PhoneValidator < ActiveModel::Validator
  def validate(record)
    unless record.phone.scan(/\d/).length > 10
      record.errors[:name] << 'Need a name starting with X please!'
    end
  end
end
 


class Student < ActiveRecord::Base
	include ActiveModel::Validations

	validates :email, :uniqueness => true
	validates :email, :format => { :with => /.+@+.+\.+.{2,}/, 
																 :message => 'Invalid email address'}
	validates :age, :numericality => { :greater_than => 5 }
	validates_with PhoneValidator

	def name
		self.first_name + " " + self.last_name
	end

	def age
		Date.today.year - self.birthday.year - ((Date.today.month > self.birthday.month || (Date.today.month == self.birthday.month && Date.today.day >= self.birthday.day)) ? 0 : 1)
	end

	private

	def validate_phone
		self.phone.scan(/\d/).length > 10
	end

end
