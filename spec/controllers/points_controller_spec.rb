require 'spec_helper'

describe PointsController do

  describe "GET 'calculate'" do
    it "should be successful" do
      get 'calculate'
      response.should be_success
    end
  end

  describe "GET 'correct'" do
    it "should be successful" do
      get 'correct'
      response.should be_success
    end
  end

end
