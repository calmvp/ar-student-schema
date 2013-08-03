require_relative '../../db/config'
require 'time'
require 'sqlite3'
class Student < ActiveRecord::Base
# implement your Student model here
  has_and_belongs_to_many :teachers
  validates :age, numericality: { only_integer: true,
                                  greater_than: 4    }
  validates :email, format: { with: /.+@.+[.].{2,}/,
    message: "wrong format, biatch"}
  validates :email, :uniqueness => true 
  validate :lemme_get_yo_numba

  def lemme_get_yo_numba
    errors.add(:phone, "yo digits aint rite") if
     phone.gsub(/\D/, "").length < 10
  end

  # def name
  #   "#{first_name} #{last_name}"
  # end

  def age
    (Date.today - birthday).to_i/365    
  end

  def assign_teacher
    random_number = (rand(5) + 1)
    Student.all.each do |student|
      student[:teacher_id] = (rand(5) + 1)
      student.save
    end
  end

end


student = Student.new
student.assign_teacher

