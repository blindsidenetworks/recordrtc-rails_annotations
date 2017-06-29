class AddStudentToRecordings < ActiveRecord::Migration[5.0]
  def change
    add_reference :recordings, :student, foreign_key: true
  end
end
