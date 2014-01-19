# require "./app/services/years_of_coding"
require "spec_helper"

describe YearsOfCoding do

  it ".till_now" do
    time_travel_to Date.new(2014, 1, 1)
    expect(YearsOfCoding.till_now).to eql(13)
  end

end
