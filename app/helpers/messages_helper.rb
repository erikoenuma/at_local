module MessagesHelper

    # メッセージは日付ごとに表示する
    def date_group(messages)
        messages.group_by{|p| p.created_at.to_date }
    end

    # senderの中身をユーザーの種類で分ける
    def sender_string
        if shop_user?(current_user)
            return "shop"
        else
            return "customer"
        end
    end

    # 自分が送ったメッセージかどうか
    def sender?(message)
        message.sender == sender_string
    end
end
