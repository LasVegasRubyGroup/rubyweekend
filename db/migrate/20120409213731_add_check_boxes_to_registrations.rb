class AddCheckBoxesToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :agreed_to_refund_policy, :boolean
    add_column :registrations, :agreed_to_min_requirements, :boolean
  end
end
