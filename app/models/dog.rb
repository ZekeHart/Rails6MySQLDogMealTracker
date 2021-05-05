class Dog < ApplicationRecord
  include Discard::Model

  belongs_to :owner
  has_many :meals
end
