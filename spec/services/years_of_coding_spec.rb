require "spec_helper"

describe YearsOfCoding do

  context ".till_now" do
    it "returns 13 in 2014" do
      time_travel_to Date.new(2014, 1, 1)
      expect(YearsOfCoding.till_now).to eql(13)
    end

    it "returns 14 in 2015" do
      time_travel_to Date.new(2015, 1, 1)
      expect(YearsOfCoding.till_now).to eql(14)
    end
  end

end
