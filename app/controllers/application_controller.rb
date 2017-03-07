class ApplicationController < ActionController::Base
  before_filter :force_https

  # redirects any http requests to https
  def force_https
    redirect_to request.url.gsub("http://","https://") if ENV['HEROKU_APP_NAME'] && request.url.include?("http://")
  end

  protect_from_forgery with: :exception
end
