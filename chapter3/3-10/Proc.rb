# Proc ブロックをオブジェクトとして使いたい
proc = Proc.new{|x| p x}
proc.call(1)

#オブジェクトとしてブロックを使う
def get_counter start
    Proc.new{|up| start += up}
end

count_up =get_counter(1)
# ///

p count_up.call(1)
# ///

p count_up.call(3)