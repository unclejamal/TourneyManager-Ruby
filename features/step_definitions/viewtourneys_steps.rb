Given(/^(System) has no tourneys$/) do |system|
  system.create_office
end

When(/^(Spectator) views all tourneys$/) do |spectator|
  @actual_tourneys = spectator.view_tourneys
end

Then(/^(They) see no tourneys$/) do |spectator|
  @actual_tourneys.should == []
end


