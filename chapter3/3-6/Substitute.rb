#要素数指定 a[操作対象インデックス,そこからの要素数]
a = [0,1,2,3,4,5]
p a[2,3]

#要素数を指定した代入　要素数も変わる
a = [0,1,2,3]
a[1,2] ="a"
p a
p a.length

#要素数を指定して配列を代入
a = [0,1,2,3]
a[1,2] = ["a","b"]
p a
p a.length

a = [0,1,2,3]
a[1,2] = "a","b" #=>カッコの省略
p a
p a.length

#指定数以上の個数を代入
a = [0,1,2,3]
a[1,2] = "a","b","c"
p a
p a.length