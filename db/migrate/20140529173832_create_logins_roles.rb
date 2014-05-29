class CreateLoginsRoles < ActiveRecord::Migration
  def change
    create_table :logins_roles, id: false do |t|
    	t.belongs_to :login
    	t.belongs_to :role
    end
  end
end
