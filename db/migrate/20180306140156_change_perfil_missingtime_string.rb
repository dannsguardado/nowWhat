class ChangePerfilMissingtimeString < ActiveRecord::Migration[5.0]
  def change
  	change_column :perfils, :ano_de_licenciatura, :string
  end
end
