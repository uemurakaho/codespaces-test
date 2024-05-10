# 配列のeachメソッド
[1, 2, 3].each do |value|
    p value
end

# each_with_indexメソッド index配列番号
[3, 4, 5].each_with_index do |value, index|
    p value + index 
end

{:a => 1, :b => 2}.each do |key, value|
    p "#{key}:#{value}"
end
