class ApplicationController < ActionController::Base
  before_action :authenticate_director!

  protect_from_forgery with: :exception
end
