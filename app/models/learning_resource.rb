class LearningResource < ActiveRecord::Base
  enum age_category: [ :kid, :teenager, :adult ]
  enum delivery_method: [ :online, :face2face ]
  enum location: [ :online_l, :Wellington ]
  enum event_category: [ :course, :club, :individual, :online_e, :workshop ]
end
  
