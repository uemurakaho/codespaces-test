#Procとlambdaの違い 引数が一致しないときの出力結果が異なる
p1 = Proc.new{|x,y| y}
p p1.call(1) #=>nill

p1 = lambda.new{|x,y| y}
p p1.call(1) #=>ArgumentError


# 別の記述方法 lambda
p1 = ->(x, y){p x+y}
p1.call(2,3)
