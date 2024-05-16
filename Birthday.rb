# t = Time.mktime(2001,06,21)
require 'time'

def get_weekday(year,month, day)
  # 年を補完して日付を生成
  date = Date.new(year, month, day)
  
  # 曜日を数値で取得（0が日曜日、6が土曜日）
  date.wday

  # 曜日の名前を配列で定義
  weekdays = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
  weekdays[date.wday]

end


# ユーザーから月日を入力
puts "生まれ年を入力してください:"
year = gets.to_i
puts "月を入力してください (1-12):"
month = gets.to_i
puts "日を入力してください (1-31):"
day = gets.to_i

# 曜日を計算して出力
weekday = get_weekday(year,month, day)
puts "あなたが生まれた日付の曜日は: #{weekday}"