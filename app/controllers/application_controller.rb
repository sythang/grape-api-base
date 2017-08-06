class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :feature_banners

  private
  def feature_banners
    @feature_banners = FeatureBanner.available
  end
end
