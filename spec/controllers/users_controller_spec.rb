require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end

    it "should have the correct title" do
      get 'new'
      response.should have_selector("title", :content => "Get Invited")
    end
  end

end
