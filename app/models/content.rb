class Content < ApplicationRecord
def self.search(search)
  where("title ILIKE ? OR prev ILIKE ? OR content ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
end
end
