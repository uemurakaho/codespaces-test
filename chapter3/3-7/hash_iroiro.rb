#ハッシュのデフォルト値の設定
a = Hash.new(5)
p a[:foo1]

#Hash[]からハッシュを生成
a = Hash[:hoofoo1, 1, :hoofoo2, 2,:hoofoo3, 3]
p a[:hoofoo3]

#Array#to_hから生成
a = [[:foo1, 1], [:foo2, 2], [:foo3, 3]].to_h
p a[:foo3]

