#ブロックの使用例 yieldは受け取ったブロック引数を展開するためのメソッド
#メソッドfuncはyieldによりブロックを実行する
def func x
    x + yield
end

p func(1){2}


def func y
    y + yield
end
func(1) do
    x = 2
end
p x  #xは元のスコープ外では参照できない