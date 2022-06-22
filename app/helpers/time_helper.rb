module TimeHelper

    # 日付けを文字列に変換する
    def datetime_string(time)
        time.strftime("%Y年%m月%d日 %H:%M")
    end

    # 時間のみ
    def time_string(time)
        time.strftime("%H:%M")
    end

    # 月と日のみ
    def month_string(time)
        time.strftime("%m月%d日")
    end
end