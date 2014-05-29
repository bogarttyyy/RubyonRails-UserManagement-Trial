class RemoveRolesFromLogin < ActiveRecord::Migration
  def change
    remove_reference :logins, :role, index: true
  end
end
