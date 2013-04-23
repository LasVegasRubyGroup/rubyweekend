class RemoveUsrlibMembershipAndTokenAndFromRegistrations < ActiveRecord::Migration
  def up
    remove_column :registrations, :usrlib_membership
    remove_column :registrations, :token
  end

  def down
    add_column :registrations, :token, :string
    add_column :registrations, :usrlib_membership, :boolean
  end
end
