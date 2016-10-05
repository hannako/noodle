class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :address_line_one
      t.string :address_line_two
      t.string :address_line_three
      t.string :address_post_code
      t.date   :birthday

      t.timestamps null: false
    end
  end
end
