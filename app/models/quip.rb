class Quip < ActiveRecord::Base
  attr_accessible :image, :jackass_count, :message, :rating, :user_id
  belongs_to :user

  has_many :inappropriates, through: :feedbacks
  has_many :likes, through: :feedbacks

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

