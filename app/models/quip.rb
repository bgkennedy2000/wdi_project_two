class Quip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :image, :jackass_count, :message, :rating, :user_id
  

  has_many :inappropriates
  has_many :likes
  has_many :feedbacks

  validates :message, presence: true
  validates_length_of :message, maximum: 141 
  validates :rating, presence: true
  validates :user_id, presence: true
  validates :image, presence: true

  after_initialize :defaults


end


def defaults
  self.image ||= 'none'
  self.rating ||= 0
end

