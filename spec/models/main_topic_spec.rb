require 'spec_helper'

describe MainTopic do
  it "is invalid without a topic" do
		topic = FactoryGirl.build(:main_topic, topic: nil)
		expect(topic).to have(1).errors_on(:topic)
	end
end
