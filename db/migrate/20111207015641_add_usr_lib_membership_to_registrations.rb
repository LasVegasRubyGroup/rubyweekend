class AddUsrLibMembershipToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :usrlib_membership, :boolean
  end
end
