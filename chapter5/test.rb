# 組み込みクラス
# /home/codespace/.irb-history
# オブジェクトのID
# object_id
# p.247から
# バックスラッシュは\
a = [1,2,3]
p a.class
p Array[1,2,3]
p Array.new(3,"str")
p Array.new([1,2,3])

# 5-5-2
3.2.3 :010 > a.concat([5,6])
 => [1, 2, 3, 4, 5, 6] 

 5-5-3
 3.2.3 :030 > a = [1,2,3]
 => [1, 2, 3] 
3.2.3 :031 > a.object_id
 => 567900 
3.2.3 :032 > a = [1,2,3]
 => [1, 2, 3] 
3.2.3 :033 > a.object_id
 => 598760 
3.2.3 :034 > a.replace([4,5,6])
 => [4, 5, 6] 
3.2.3 :035 > a.object_id
 => 598760  #replaceメソッドはオブジェクトIDが変化しない

