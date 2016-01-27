class ChangeIdNameAgain < ActiveRecord::Migration
  def change
    remove_column :contact_groups, :contactinfo_id, :integer
    add_column :contact_groups, :contact_info_id, :integer
  end
end
