Feature: Patient Check-in

So that when I check a patient
As a charge nurse 
I want to be able to check a patient into an empty room

Scenario: Check a patient into an empty room
  Given a patient 'Wilma Flintstone'
	And an empty room
  When I try to assign 'Wilma Flintstone' to that room
  Then 'Wilma Flintstone' occupies the room 

Scenario: Attempt to Check a patient into an occupied room
  Given a patient 'Wilma Flintstone'
	And an occupied room
  When I try to assign 'Wilma Flintstone' to that room
  Then 'Wilma Flintstone' does not occupies the room