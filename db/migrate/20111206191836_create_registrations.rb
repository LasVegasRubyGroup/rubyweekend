class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.integer :amount
      t.string :token
      t.string :card_last_four
      t.string :card_type

      t.timestamps
    end
  end
end
