module NotificationsHelper

    # 未読のお知らせがあるかどうか
    def has_unchecked_notifications?
        Notification.all.where(:checked => false, :receiver_id => current_user.id).length > 0
    end
end
