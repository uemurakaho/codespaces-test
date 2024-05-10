#可変長引数
def foo a,*b
    b
end
p foo(1, 2, 3)

#引数展開
def foo1 a, *b
    foo2(*b)
end
def foo2 c, *d
    d
end
p foo1(1,2,3)
