class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :code
      t.string :name
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
