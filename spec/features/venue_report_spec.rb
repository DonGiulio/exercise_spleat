require "rails_helper"

RSpec.describe VenueReport, :type => :feature do
  before(:each) do
    @venues = create_list :venue, 5
  end
  
  it "Generates a new report" do
    reporter = VenueReport.new(@venues)
    report = reporter.generate
    expect(report.class).to be Array
    expect(report.size).to be @venues.size
    expect(report.first.class).to be VenueRow
  end
end