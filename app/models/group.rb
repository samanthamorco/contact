class Group < ActiveRecord::Base

  has_many :contact_groups
  has_many :contact_infos, through: :contact_groups

end
