class Owner < ApplicationRecord
    include Discard::Model

    has_many :dogs
end
