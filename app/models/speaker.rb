class Speaker < ActiveRecord::Base

def self.search(search)
  if search
    where('lower(name) LIKE :search OR lower(sector) LIKE :search OR lower(description) LIKE :search OR lower(phone) LIKE :search OR lower(email) LIKE :search', search: "%#{search.downcase}%")
  else
    find(:all)
  end
end

end
