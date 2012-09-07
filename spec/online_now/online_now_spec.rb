require 'spec_helper'
require 'active_support/all'

describe OnlineNow do
  before(:each) do
    @controller_class = Class.new
    @controller = @controller_class.new
    stub(@controller).params { {} }
    stub(@controller).current_user { :current_user }
    @controller_class.send(:include, OnlineNow)
  end

  it "should have a current_ability method which generates an ability for the current user" do
    @controller.current.should be_kind_of(OnlineNow)
  end
end