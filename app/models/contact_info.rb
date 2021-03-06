class ContactInfo < ActiveRecord::Base

  has_many :contact_groups
  has_many :groups, through: :contact_groups

def friendly_update
  return updated_at.strftime("%A, %d %b %Y %l:%M %p")
end


def full_name
  return "#{first_name} #{middle_name} #{last_name}"
end

def Japanese_number
  return "+81 #{phone_number}"
end

def address
  
end

end
