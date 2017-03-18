class Appointment < ApplicationRecord
  belongs_to :patient
  has_one :user, through: :patient
  mount_uploader :image, ImageUploader
  mount_uploader :image2, Image2Uploader
  mount_uploader :image3, Image3Uploader
  mount_uploader :image4, Image4Uploader
  scope :latest_first, -> {order(created_at: :desc)}

end
