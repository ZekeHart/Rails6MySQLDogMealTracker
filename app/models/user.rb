class User < ApplicationRecord
    has_secure_password
    include Discard::Model
end
