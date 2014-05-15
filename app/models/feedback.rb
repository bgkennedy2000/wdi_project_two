class Feedback < ActiveRecord::Base
  attr_accessible :quip_id, :user_id
  belongs_to :user
end
