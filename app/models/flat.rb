class Flat < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :flat_type, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
