require 'spec_helper'

describe PagesController do

  describe "GET 'dashboard'" do
    it "returns http success" do
      get 'dashboard'
      response.should be_success
    end
  end

  describe "GET 'search'" do
    it "returns http success" do
      get 'search'
      response.should be_success
    end
  end

  describe "GET 'calendar'" do
    it "returns http success" do
      get 'calendar'
      response.should be_success
    end
  end

end
