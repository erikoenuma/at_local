class NotificationsController < ApplicationController

    def index
        @notifications = Notification.all.where(receiver_id: current_user.id).sort do |a,b|
            b[:created_at] <=> a[:created_at]
        end
    end

end
