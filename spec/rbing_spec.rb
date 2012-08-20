require File.dirname(__FILE__) + '/spec_helper'
require 'rbing'

describe "RBing" do
  before :each do
    @bing = RBing.new
  end
  
  it "should format a query properly with a hash" do
    @bing.send(:build_query, "ruby").should eq({:Query=>"'ruby'"})
  end
  
  it "should provide a web search method" do
    @bing.should respond_to(:web)
  end
  
  it "should return a ResponseData object" do
    @bing.web("ruby", top: 10, skip: 10).should be_a(RBing::ResponseData)
  end
  
  it "should return search results" do
    @bing.web("ruby", top: 10, skip: 10).results.should_not be_empty
  end
end
