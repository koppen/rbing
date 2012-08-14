require File.dirname(__FILE__) + '/spec_helper'
require 'rbing'

describe "RBing" do
  before :each do
    @bing = RBing.new
  end
  
  it "should provide a web search method" do
    @bing.should respond_to(:web)
  end
  
  it "should return a ResponseData object" do
    @bing.web("ruby").should be_a(RBing::ResponseData)
  end
  
  it "should return search results" do
    @bing.web("ruby").results.should_not be_empty
  end
end
