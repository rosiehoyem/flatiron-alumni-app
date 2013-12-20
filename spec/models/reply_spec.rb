require 'spec_helper'

describe Reply do
  it "is invalid without content" do
		reply = FactoryGirl.build(:reply, content: nil)
		expect(reply).to have(1).errors_on(:content)
	end
end
