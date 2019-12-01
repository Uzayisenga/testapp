class Docteur < ApplicationRecord
#     has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
#   validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    has_one_attached :image
    validates :names, :image, :email, :telephone, :availability, :upload_cv, :upload_diploma, :field_in,  presence: true
  validates :email, uniqueness: true
end
