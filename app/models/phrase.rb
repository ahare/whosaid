class Phrase < ActiveRecord::Base
  attr_accessible :owner_id, :speaker_id, :spoken_on, :text
  belongs_to :speaker
end
