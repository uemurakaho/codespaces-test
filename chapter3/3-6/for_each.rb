#for式 繰り返し for <識別子> in <式> do(doは省略可能); end;
a =[2, 3, 4]
for i in a do
    p i
end

for i, j in [[1, 2],[3, 4]]
    p i+j
end

#スコープは変数の有効範囲、範囲を超えるとその変数は使えなくなる
#for式はスコープが作成されないのでその後のコードからも参照可能
for i in [1, 2, 3]
    bar = 1
end
p bar
#eachメソッドはスコープを作成 ブロックの外から参照できない
[2, 3, 4].each do
    dar = 1
end 
p dar #=>NameError
