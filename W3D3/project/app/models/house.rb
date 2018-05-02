class House < ActiveRecord::Base

  validates :address, presence: true
  
  has_many :person,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'
end
