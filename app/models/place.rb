class Place < ApplicationRecord
    has_many :shopping_streets, dependent: :destroy
    has_many :shops
end
