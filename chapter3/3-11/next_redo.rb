#脱出構文
# nextの場合
10.times do |i|
    next if i == 5
    print i," "
end

# redoの場合
# 10.times do |i|
#     redo if i == 5
#     print i, " "
# end #=>無限ループ


