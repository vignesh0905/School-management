class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.text :rollno
      t.string :name
      t.text :classroom
      t.string :bloodgroup
      t.string :usertype
      t.decimal :mark1
      t.decimal :mark2
      t.decimal :mark3
      t.decimal :mark4
      t.decimal :mark5
      t.decimal :total
      t.decimal :average
      t.string :grade

      t.timestamps
    end
  end
end
