class AddExtraFieldToStudent < ActiveRecord::Migration[6.0]
  def change

    add_column :students, :teachername, :string
    
  end
end
