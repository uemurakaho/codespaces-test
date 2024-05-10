#if文 trueはfalseとnil以外のオブジェクトはすべて真
if true then
    p 1
end

a = if true then
    1
end
p a 

#if式を評価した値
a= if true
    1
end
p a 

#if修飾子（#if式を評価した値の別の記述方法）真の時に実行する処理 if 条件式;
a = 1 if true 
p a
a = 2 if false
p a

#条件が成立しない場合
b=3 if false
p b 
p c
