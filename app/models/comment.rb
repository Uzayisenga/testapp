class Comment < ApplicationRecord
  belongs_to :publisher
  validates :description, presence: true, uniqueness: true, length:{ maximum:100 }
end
