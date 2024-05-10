#ハッシュ実引数の最後に指定する場合は{}を省略できる
#3番目以降の２つの引数が１つのハッシュとして解釈される
def foo a, b, c
    c
end
p foo(1, 2, :foo1=>1, :foo2=>2)

#区切りがあいまいになるので途中で指定する場合は{}省略できない
def hoo a,b,c
    c
end
p hoo(1, {:hoo1=>1}, {:hoo2=>2})
