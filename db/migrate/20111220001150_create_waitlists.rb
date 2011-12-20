class CreateWaitlists < ActiveRecord::Migration
  def change
    create_table :waitlists do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
