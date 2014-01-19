require "spec_helper"

describe ApplicationHelper do
  describe "#controller_and_action_name" do
    let(:fake_controller_name) { "CONTROLLER" }
    let(:fake_action_name) { "ACTION" }

    before do
      controller.stub(:controller_name).and_return(fake_controller_name)
      controller.stub(:action_name).and_return(fake_action_name)
    end

    it "returns controller and action name" do
      expect(helper.controller_and_action_name).to eql("#{fake_controller_name}-#{fake_action_name}")
    end
  end
end
