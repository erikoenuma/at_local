module TimeHelper

    # 日付けを文字列に変換する
    def datetime_string(time)
        time.strftime("%Y年%m月%d日 %H:%M")
    end
end