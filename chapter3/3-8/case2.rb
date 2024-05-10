#複数条件式設定
case 3 
when 1,2 then; p 1
when 3,4 then; p 2
else p 3
end

#条件式に範囲を設定
a = 7
b = case a
when 1...5; 1
when 5..10; 2
end
p b