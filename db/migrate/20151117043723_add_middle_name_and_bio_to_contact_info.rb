class AddMiddleNameAndBioToContactInfo < ActiveRecord::Migration
  def change
    add_column :contact_infos, :middle_name, :string
    add_column :contact_infos, :bio, :text
  end
end
