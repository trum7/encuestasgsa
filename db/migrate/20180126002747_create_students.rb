class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :course
      t.integer :code
      t.integer :stock
      t.string :token
      t.integer :level

      t.timestamps
    end
  end
end
