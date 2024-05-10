#whileとuntil
i = 0
while (0..4) === i do
    p i
    i += 1
end

#5になったら脱出するので出力されない
i = 0
until i == 5 do
    p i
    i += 1
end
