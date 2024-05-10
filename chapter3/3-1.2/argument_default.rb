#仮引数にはデフォルト値を格納
def foo a,b=100
    a+b
end

p foo 2,3
p foo 1
p foo    #=>ArgumentError

