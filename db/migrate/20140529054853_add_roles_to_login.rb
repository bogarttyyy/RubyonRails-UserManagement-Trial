class AddRolesToLogin < ActiveRecord::Migration
  def change
    add_reference :logins, :role, index: true
  end
end
