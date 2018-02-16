class AddUserIdToPerfil < ActiveRecord::Migration[5.0]
  def change
    add_column :perfils, :user_id, :integer
  end
end
