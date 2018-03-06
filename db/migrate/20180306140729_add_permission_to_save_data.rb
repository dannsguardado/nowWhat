class AddPermissionToSaveData < ActiveRecord::Migration[5.0]
  def change
  	add_column :perfils, :savedata, :boolean
  end
end
