class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :course
      t.integer :code, :limit => 12
      t.string :token
      t.integer :level

      t.timestamps
    end
  end
end
