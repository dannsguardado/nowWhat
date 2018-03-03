class CreatePerfils < ActiveRecord::Migration[5.0]
  def change
    create_table :perfils do |t|
      t.string :nome
      t.integer :ano_de_licenciatura
      t.string :instituto
      t.string :curso
      t.timestamps
    end
  end
end
