class Publisher < ApplicationRecord
    has_many :comments
    validates :name, presence: true, uniqueness: true, length:{ maximum:100 }
    validates :publish, presence: true, uniqueness: true, length:{ minimum:100 }
end
