#自己代入におけるオブジェクトの参照先
v1 ="foo1"
v2 = v1
v1 +="foo2"
p v1
p v2

#メソッドの引数
def func v1
    v1.object_id
end

v1 ="foo1"
p v1.object_id
p func(v1)

#メソッド内部での自己代入
def func v1
    v1 += "foo2"
end
v1 = "foo1"
p func v1
p v1
