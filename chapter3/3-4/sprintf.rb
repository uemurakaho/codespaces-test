#sprintfによるフォーマット指定
#2進、8進、16進の指示子(b, B, o, x, X) 
puts sprintf("result: %#b", 16)
puts sprintf("result: %#o", 16)
puts sprintf("result: %#x", 16)
puts sprintf("result: %#X", 16)

#桁数の指定 %d=>10進数で出力
puts sprintf("result: %02d", 1)
puts sprintf("result: %03d", 1)
puts sprintf("result: %05.2f", 1.1111)

#文字列の%演算
#sprintf関数と同じ結果を返す
#String#%というメソッドです。String#%は書式を設定して\dなどに渡します。型が崩れるとエラー出ます
puts "result: %02d"% 1
puts "result: %03d"% 1
puts "result: %05.2f"% 1.1111