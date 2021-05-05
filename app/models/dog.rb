class Dog < ApplicationRecord
  include Discard::Model
  
  belongs_to :owner
end
