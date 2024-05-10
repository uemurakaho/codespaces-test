#同値性と同一性の判定
puts "foo1" =="foo1" 
puts "foo1" .equal? "foo1"  #=> false

puts :foo1 == :foo1
puts :foo1 .equal? :foo1
puts nil


#eql?メソッド
puts "foo1".eql? "foo1"
puts 1.0 == 1
puts (1.0) .eql? 1
puts (1.0) .eql? 1.0


