#シンボルリテラル
foo1 = :"foo1"
foo2 = :"#{foo1}foo2"
foo3 = :'foo3'
foo4 = :foo4

puts foo1
puts foo2
puts foo3
puts foo4


#パーセント記法
puts %s?foo1?
puts %s[foo2]
