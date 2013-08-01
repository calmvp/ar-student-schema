require_relative '../app/models/teacher'
require_relative '../app/models/student'
require_relative '../app/models/student_teacher'

module CreateAssociations
  def self.create
    54.times do |i|
      teacher_assignments = (1..5).to_a.sample(4)
      teacher_assignments.each do |teacher| 
        StudentsTeachers.create({ student_id: (i + 1), teacher_id: teacher })
      end
    end
  end 
end
