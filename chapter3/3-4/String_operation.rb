#文字列演算
a= "ru" + "by"
puts a
puts a*3
#puts 3*a #=>TypeError

#メソッドによる連結
#破壊的メソッド：レシーバであるオブジェクトそのものに変更を加えるメソッドのこと
a ="ru"
p a <<"by"
p a