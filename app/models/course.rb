class Course < ApplicationRecord
  belongs_to :instructor
  has_and_belongs_to_many :students
  has_many :recordings, through: :students, dependent: :delete_all

  validates_presence_of :course_id, :code, :name, :instructor_id
end
