class Inappropriate < Feedback
  attr_accessible :inappropriate
    validates :inappropriate, presence: true
end
