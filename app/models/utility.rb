# misc function for upkeep
class Utility
  # renew SSL every month on the first
  def self.heroku_new_ssl
    if Time.now.day != 1
      `rake letsencrypt:renew`
    end
  end
end
