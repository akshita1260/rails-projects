class ApplicationController < ActionController::Base
  def default_url_options
    { host: 'google.com',protocol: 'https' }
  end
end
