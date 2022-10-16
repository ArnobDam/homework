class House < ApplicationRecord
    validates :address, presence: true, uniqueness: true
end
