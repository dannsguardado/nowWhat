class AddUsersToEvent < ActiveRecord::Migration[5.0]
  def change
  	create_table :attendances do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :event, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
