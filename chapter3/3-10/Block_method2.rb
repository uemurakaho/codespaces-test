# each_key,each_valueメソッド
{:a => 1, :b => 2}.each_key do |key|
    p "#{key}"
end

{:a => 1, :b => 2}.each_value do |uni|
    p "#{uni}"
end

#範囲オブジェクトのeachメソッド
("a".."z").each do |value|
    print value
end
