require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :students
  validates :email, format: { with: /.+@.+[.].{2,}/,
    message: "wrong format, biatch"}
  validates :email, :uniqueness => true 
  validate :lemme_get_yo_numba 

  def lemme_get_yo_numba
    errors.add(:phone, "yo digits aint rite") if
     phone.gsub(/\D/, "").length < 10
  end


end
