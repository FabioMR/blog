require "spec_helper"

describe ApplicationHelper do
  context "with namespace" do
    describe "#data_route" do
      before do
        allow(controller).to receive(:controller_path).and_return("NAMESPACE/CONTROLLER_NAME")
        allow(controller).to receive(:action_name).and_return("ACTION_NAME")
      end

      it "returns controller and action name" do
        expect(helper.data_route).to eql("NAMESPACE_CONTROLLER_NAME#ACTION_NAME")
      end
    end
  end

  context "without namespace" do
    describe "#data_route" do
      before do
        allow(controller).to receive(:controller_path).and_return("CONTROLLER_NAME")
        allow(controller).to receive(:action_name).and_return("ACTION_NAME")
      end

      it "returns controller and action name" do
        expect(helper.data_route).to eql("CONTROLLER_NAME#ACTION_NAME")
      end
    end
  end
end
