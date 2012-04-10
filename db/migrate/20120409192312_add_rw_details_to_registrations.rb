class AddRwDetailsToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :rw_number, :integer
    add_column :registrations, :rw_date, :datetime
  end
end
