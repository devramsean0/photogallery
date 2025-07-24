class HomeController < ApplicationController
  allow_unauthenticated_access

  def index
    @photos = Photo.order(created_at: :desc)
  end
end
