#自分自身の内容を変更するメソッド＝＞破壊的メソッド
v1 = "foo1"
v2 = v1

p v1.chop
p v2
p v1.chop! #!をつける慣習
p v2
