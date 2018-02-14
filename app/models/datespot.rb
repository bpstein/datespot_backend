# Datespot class
class Datespot < ActiveRecord::Base
  belongs_to :category
  validates :name, presence: true
  validates :short_description, presence: true, length: { maximum: 500 }
  validates :location, presence: true
  validates :website, presence: true
  validates :price_range, presence: true, numericality: { only_integer: true }, length: { maximum: 10 }
  validates :quirkiness_rating, presence: true, numericality: { only_integer: true }, length: { maximum: 10 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :category, presence: true

  validates :mon_open, presence: true
  validates :mon_close, presence: true
  validates :tue_open, presence: true
  validates :tue_close, presence: true
  validates :wed_open, presence: true
  validates :wed_close, presence: true
  validates :thu_open, presence: true
  validates :thu_close, presence: true
  validates :fri_open, presence: true
  validates :fri_close, presence: true
  validates :sat_open, presence: true
  validates :sat_close, presence: true
  validates :sun_open, presence: true
  validates :sun_close, presence: true

  has_attached_file :image
  validates_uniqueness_of :image_file_name
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
