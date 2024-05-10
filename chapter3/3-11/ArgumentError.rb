# 例外処理
raise ArgumentError, "引数が不正です"
raise ArgumentError.new, "引数が不正です"

err = ArgumentError.new("引数が不正です")
raise err 

raise "実行中にエラーが発生しました"