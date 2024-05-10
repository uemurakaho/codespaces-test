#文字列とシンボルの変換
v1 ="foo1"
v2 = v1.to_sym
v3 = v1.to_s

p v2 
p v3


#シンボルは文字列の並びが同じなら同一のオブジェクトを参照
#Stringは指定するごとに新たなStringオブジェクトが生成される
p "foo1".object_id
p "foo1".object_id

p :foo1.object_id
p :foo1.object_id #15行目とオブジェクトIDが同じ
p :foo2.object_id

