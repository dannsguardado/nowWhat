class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.string :name
      t.string :tipo
      t.timestamp :date
      t.string :theme
      t.string :description
      t.timestamps
    end
  end
end
