class AddAdminRefToGroups < ActiveRecord::Migration
  def change
    add_reference :groups, :admin, index: true, foreign_key: true
  end
end
