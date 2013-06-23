require 'services/tourney_office'

describe TourneyOffice do
  it "views empty tourneys" do
    office = TourneyOffice.new
    tourneys = office.view
    tourneys.should == []
  end
end
