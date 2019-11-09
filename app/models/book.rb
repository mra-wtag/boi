class Book < ApplicationRecord
  validates :name, :identifier, :author_id,  presence: true
  validates :identifier, uniqueness: true

  before_validation :set_identifier
  
  def set_identifier
    self.identifier = self.name.downcase.split(' ').join('-') unless self.identifier
  end
end
