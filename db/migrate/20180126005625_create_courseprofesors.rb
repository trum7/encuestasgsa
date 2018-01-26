class CreateCourseprofesors < ActiveRecord::Migration[5.1]
  def change
    create_table :courseprofesors do |t|
      t.string :profesor
      t.string :course
      t.string :subject

      t.timestamps
    end
  end
end
