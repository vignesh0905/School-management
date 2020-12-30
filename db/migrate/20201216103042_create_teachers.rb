class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.text :empid
      t.string :name
      t.text :classroom
      t.string :bloodgroup
      t.string :usertype

      t.timestamps
    end
  end
end
