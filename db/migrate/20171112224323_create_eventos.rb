class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :title
      t.string :speaker
      t.string :target
      t.string :theme
      t.text :description

      t.timestamps
    end
  end
end
