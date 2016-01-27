class ChangeIdName < ActiveRecord::Migration
  def change
    add_column :contact_groups, :contactinfo_id, :integer
    remove_column :contact_groups, :contact_id, :integer

  end
end
