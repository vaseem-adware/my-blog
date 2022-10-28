class ApplicationController < ActionController::Base
  before_action :blog_setting

  def blog_setting
    @setting = Setting.last
  end
  
end
