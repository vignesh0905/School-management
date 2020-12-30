class CreateStandards < ActiveRecord::Migration[6.0]
  def change
    create_table :standards do |t|
      t.text :classroom

      t.timestamps
    end
  end
end
