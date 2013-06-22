Given(/^there are no tourneys$/) do
  @office = TourneyOffice.new
end

When(/^spectator views them$/) do
  @actual_tourneys = @office.view
end

Then(/^they see no tourneys$/) do
  @actual_tourneys.should == []
end
