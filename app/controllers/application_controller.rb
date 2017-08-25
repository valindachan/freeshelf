class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @posts = Posts.all
  end
end
