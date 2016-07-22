class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates :name, length: {minimum: 2,
    too_long: "Thats too short for a brand name."}
end
