class ContactGroup < ActiveRecord::Base
  belongs_to :contact_info
  belongs_to :group
end
