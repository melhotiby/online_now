module OnlineNow
  class Railtie < Rails::Railtie
    initializer 'online_now.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end