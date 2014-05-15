class Like < Feedback
  attr_accessible :like
  validates :like, presence: true
end
