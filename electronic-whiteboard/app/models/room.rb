class Room < ActiveRecord::Base
  attr_accessible :room_number
  has_one :patient
  has_one :nurse
  has_one :attending
end
