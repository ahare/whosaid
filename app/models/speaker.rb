class Speaker < ActiveRecord::Base
  attr_accessible :birthday, :name, :owner_id
end
