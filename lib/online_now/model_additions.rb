module OnlineNow
  module ModelAdditions
    def online_now
      scope :online, lambda{ where("updated_at > ?", 10.minutes.ago) }
    end
  end
end