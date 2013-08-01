require_relative '../../db/config'

class StudentsTeachers < ActiveRecord::Base
  belongs_to :students
  belongs_to :teachers
end
