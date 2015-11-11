class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
