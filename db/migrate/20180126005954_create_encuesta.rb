class CreateEncuesta < ActiveRecord::Migration[5.1]
  def change
    create_table :encuesta do |t|
      t.string :profesor
      t.string :subject
      t.string :student
      t.integer :p1
      t.integer :p2
      t.integer :p3
      t.integer :p4
      t.integer :p5
      t.integer :p6
      t.integer :p7
      t.integer :p8
      t.integer :p9
      t.integer :p10
      t.integer :p11
      t.integer :p12
      t.integer :p13
      t.integer :p14
      t.integer :p15
      t.integer :p16
      t.integer :p17
      t.integer :p18
      t.integer :p19
      t.integer :p20
      t.integer :p21
      t.integer :p22
      t.integer :p23
      t.integer :p24
      t.string :bueno
      t.string :mejorar

      t.timestamps
    end
  end
end
