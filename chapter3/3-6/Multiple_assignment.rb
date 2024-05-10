#多重代入
a, b, c = 1, 2, 3
p a 
p b
p c

#メソッド
def foo
    return 1,2,3
end
a,b,c = foo
p a
p b
p c

#配列による多重代入
a ,b, c = [1, 2, 3]
(a, b), c =[1, 2], 3
p a; p b; p c;
