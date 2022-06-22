module ShopsHelper

    # cancelable_days_stringの値から適切な文言を返す
    def cancel_string(days)
        case days
        when 0 then
            "当日まで可能"
        when 8 then
            "キャンセル不可"
        else
            "#{days}日前まで可能"
        end
    end

end
