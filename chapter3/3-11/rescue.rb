# 例外処理
# 例外とは、プログラムの通常の流れの中で発生し、プログラムの継続を阻止する変則性のこと
begin
    1 / 0
    p 1
rescue
    p 0
end

# beginは実行,rescueは例外なしなので実行しない,
# elseはrescueが実行されないから実行,ensure節は必ず実行される
begin
    p 1
rescue
    p 0
else
    p 2
ensure
    p 3
end

# rescue修飾子
1/0 rescue p 1

# メソッドの中で指定
def foo
    -1/0
rescue
     p 1
end
foo


