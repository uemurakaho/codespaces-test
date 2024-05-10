# ブロックの引数の指定
def func a,b
    a + yield(b,3)
end

p func(1,2){|x,y|x+y}

# ブロックの判定
def func
    return 1 if block_given? #ブロックが指定されたら
    2
end

p func(){}
p func
