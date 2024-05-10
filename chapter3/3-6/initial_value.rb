#要素の初期値の指定
a = Array.new(2, "a") #=>a[0]とa[1]は同一のオブジェクト
p a  #a=>[a,a]
a[0].replace("b")
p a  #a=>[b,b]

#期待通りの結果にするにはブロックで初期値を設定
a = Array.new(2) {"a"}
a[0].replace("b")
p a 