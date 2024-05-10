#後置whileとwhile修飾子
#beginは必ず最初実行される
i = 0
begin
    print i
    i += 1
end while (1..4) === i
#0~4が出力

#while修飾子　実行する処理を先に記述
i=0
print i +=1 while(0..4) === i
#　+1した値が表示されるので1~5が出力
