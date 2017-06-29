class Student < User
  has_many :recordings, dependent: :delete_all
  has_and_belongs_to_many :courses
end
