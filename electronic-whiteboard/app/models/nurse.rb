class Nurse < ActiveRecord::Base
  attr_accessible :first_init, :last_name
  belongs_to :room
end
