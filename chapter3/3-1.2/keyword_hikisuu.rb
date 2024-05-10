#任意の値をハッシュに格納する。
def bar (a:, b: 100, **z)
    p z
    a+b
end

p bar(a:2, c:100, d: 200)