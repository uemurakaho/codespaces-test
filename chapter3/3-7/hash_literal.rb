#ハッシュリテラル　各値に名前を付けて管理する
a = {"foo1"=>1, "foo2"=>2, "foo3"=>3}
p a["foo1"]
a["foo2"] = 20
p a 

#存在しないキーの指定　
a ={}
p a[:foo1]
#文字列を指定する場合、シンボルを指定したほうが良い
a = {foo1: 1, foo2: 2, foo3: 3}
puts a