class RenameTypetoRoleType < ActiveRecord::Migration
  def change
  	rename_column :roles, :type, :roletype
  end
end
