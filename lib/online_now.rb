require 'active_support'
require 'rails'
require 'online_now/model_additions'
require 'online_now/railtie' if defined?(Rails)

module OnlineNow
  extend ActiveSupport::Concern
  
  included do |base|
    append_before_filter :current
  end

  def current
  	if defined? current_user
      current_user.try :touch
  	end
  end
end

if defined? ActionController::Base
  ActionController::Base.class_eval do
    include OnlineNow
  end
end