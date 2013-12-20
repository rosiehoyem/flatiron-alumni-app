require 'spec_helper'

describe Forum do
	it "is invalid without a title" do
		forum = FactoryGirl.build(:forum, title: nil)
		expect(forum).to have(1).errors_on(:title)
	end

	it "is invalid without content" do
		forum = FactoryGirl.build(:forum, content: nil)
		expect(forum).to have(1).errors_on(:content)
	end
end
