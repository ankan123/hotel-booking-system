class Hotel < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :ratings


  has_many_attached :images
  geocoded_by :location
  after_validation :geocode

  validates :name, :location, :details, :price, :single_bed_room, :double_bed_room, :suite_room, :dormitory, :presence => true
  validates :name, :details, :length => { :minimum => 5 }
  validate :image_is_present_and_imagetype_correct



  def image_is_present_and_imagetype_correct
    if images.attached? == false
      errors.add(:images, "missing!! add atleast one image")
    end
    images.each do |image|
      if !image.content_type.in?(%{'image/jpeg image/png'})
        errors.add(:images, "need to be jpeg or png")
      end
     end
  end
end
