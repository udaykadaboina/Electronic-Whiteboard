Given /^a patient 'Wilma Flintstone'$/ do
  Patient.new(:first_name => "Wilma", :last_name => "Flintstone").save
end

Given /^an empty room$/ do
  Room.new(:room_number => "1").save
end

When /^I try to assign 'Wilma Flintstone' to that room$/ do
  r = Room.where("room_number = ?", "1")
  p = Patient.where("first_name = ? AND last_name = ?", "Wilma", "Flintstone")
  p[0].room = r[0]
  p[0].save!
end

Then /^'Wilma Flintstone' occupies the room$/ do
  p = Patient.where("first_name = ? AND last_name = ?", "Wilma", "Flintstone")
  p[0].room.room_number == "1"
end

Given /^an occupied room$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^'Wilma Flintstone' does not occupies the room$/ do
  pending # express the regexp above with the code you wish you had
end