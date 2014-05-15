class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_pic, :reputation, :username, :banned
  
  has_many :quips, :dependent => :destroy
  has_many :feedbacks, :dependent => :destroy
  has_many :inappropriates, through: :feedbacks
  has_many :likes, through: :feedbacks

  validates :username, presence: true
  validates :reputation, presence: true
  validates :banned, :inclusion => {:in => [true, false]}

  after_initialize :defaults
end


def defaults
  self.reputation ||= 0
  self.profile_pic ||= 'none'
  self.banned ||= false
end