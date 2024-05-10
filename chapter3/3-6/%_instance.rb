#パーセント記法(配列の全要素が文字列の場合)
v1 = %w(hoge foo bar)
puts v1 .join()
puts v1 .join("_")
#クォーテーションを表記しないのでコードがすっきりする

#インスタンスの生成による配列の生成
a = Array.new(5)
p a.length
b = Array.new(2){|index| index + 10} 
p b  
#ブロック内の式index + 10は、各インデックスに10を加えた値を返します。
