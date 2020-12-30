class CreateAttendences < ActiveRecord::Migration[6.0]
  def change
    create_table :attendences do |t|
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end
