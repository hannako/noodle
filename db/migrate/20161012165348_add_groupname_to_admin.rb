class AddGroupnameToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :groupname, :string
  end
end
