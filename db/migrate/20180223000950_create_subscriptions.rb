class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
		t.references :user, index: true, foreign_key: true, null: false
      t.references :evento, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
