class Portfolio < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belong_to :user
  
  mount_uploader :image, ImageUploader
  
  
end
