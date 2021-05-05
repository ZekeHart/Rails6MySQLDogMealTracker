class Meal < ApplicationRecord
  include Discard::Model
  
  belongs_to :dog
end
