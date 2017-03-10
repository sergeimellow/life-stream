# misc function for upkeep
class Utility
  # renew SSL
  def self.heroku_new_ssl
    if Time.now.day != 1
      `rake letsencrypt:renew`
    end
    puts "yolo 123"
  end
end
