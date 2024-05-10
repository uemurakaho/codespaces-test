#文字列の比較 文字コードの大小で決まる。辞書順のイメージ
puts "a" < "b"
puts "ab" < "ac"
puts "Ab" < "Ab"
puts "Ab" == "Ab"
puts "Ab" <=> "Ab"

#文字数の参照
puts "abcde".length
puts "日本語".length

puts "abcde".length < "日本語".length #=>文字数で比較できる
