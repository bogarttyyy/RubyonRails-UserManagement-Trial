class CreateJoinTable < ActiveRecord::Migration
  def change
  	create_join_table :logins, :roles, table_name: :userroles
  end
end
