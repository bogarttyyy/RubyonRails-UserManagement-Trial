class AddPasswordAgainToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :password_hash, :string
    add_column :logins, :password_salt, :string
  end
end
