class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates :name, length: {minimum: 2,
    too_long: "Thats too short for a store name."}
end
