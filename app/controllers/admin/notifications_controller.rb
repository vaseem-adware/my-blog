class Admin::NotificationsController < Admin::ApplicationController

  def index
    @notifications = Notification.order(created_at: :desc).
    paginate(page: params[:page], per_page: 10)
 end

end
