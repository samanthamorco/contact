class CreateContactGroups < ActiveRecord::Migration
  def change
    create_table :contact_groups do |t|

      t.timestamps null: false
    end
  end
end
