class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates :name, length: {minimum: 3}
  before_save(:format_input)
  default_scope {order(rating: :desc)}

private
  define_method(:format_input) do
    self.name=(name().capitalize())
  end
end
