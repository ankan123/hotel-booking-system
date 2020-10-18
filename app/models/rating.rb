class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :hotel

  validates :rating, :comment, :presence => true
  validates :comment, :length => { :minimum => 5 }

end
